import http from '@ohos.net.http';
import { GlobalContext } from '../utils/GlobalContext';
import { AuthService } from './AuthService';

export interface HttpOptions {
  timeout?: number;
  headers?: Record<string, string>;
  needAuth?: boolean;
}

export class HttpService {
  private static instance: HttpService;
  private httpRequest: http.HttpRequest;
  private defaultTimeout: number = 10000; // 10秒超时

  private constructor() {
    this.httpRequest = http.createHttp();
  }

  public static getInstance(): HttpService {
    if (!HttpService.instance) {
      HttpService.instance = new HttpService();
    }
    return HttpService.instance;
  }

  private async getAuthHeaders(options?: HttpOptions): Promise<Record<string, string>> {
    const headers: Record<string, string> = options?.headers || {};
    
    if (options?.needAuth) {
      const authService = AuthService.getInstance();
      const token = await authService.getCurrentUsername();
      headers['Authorization'] = `Bearer ${token}`;
    }

    return headers;
  }

  async get(url: string, options?: HttpOptions): Promise<string> {
    try {
      const headers = await this.getAuthHeaders(options);
      const response = await this.httpRequest.request(url, {
        method: http.RequestMethod.GET,
        header: headers,
        connectTimeout: options?.timeout || this.defaultTimeout
      });

      return this.handleResponse(response);
    } catch (error) {
      console.error('HTTP GET Error:', error);
      throw error;
    }
  }

  async post(url: string, data: Object, options?: HttpOptions): Promise<string> {
    try {
      const headers = await this.getAuthHeaders(options);
      const response = await this.httpRequest.request(url, {
        method: http.RequestMethod.POST,
        header: headers,
        extraData: JSON.stringify(data),
        connectTimeout: options?.timeout || this.defaultTimeout
      });

      return this.handleResponse(response);
    } catch (error) {
      console.error('HTTP POST Error:', error);
      throw error;
    }
  }

  private handleResponse(response: http.HttpResponse): string {
    if (response.responseCode === 200) {
      return response.result as string;
    } else if (response.responseCode === 401) {
      // Token失效，自动注销
      const authService = AuthService.getInstance();
      authService.logout();
      throw new Error('Unauthorized: Token expired');
    } else {
      throw new Error(`HTTP Error: ${response.responseCode}`);
    }
  }

  // 新增：文件上传方法
  async uploadFile(url: string, filePath: string, options?: HttpOptions): Promise<string> {
    try {
      const headers = await this.getAuthHeaders(options);
      
      const formData = new FormData();
      formData.append('file', { 
        filename: filePath.split('/').pop(), 
        name: 'file', 
        uri: filePath 
      });

      const response = await this.httpRequest.request(url, {
        method: http.RequestMethod.POST,
        header: headers,
        files: formData,
        connectTimeout: options?.timeout || this.defaultTimeout
      });

      return this.handleResponse(response);
    } catch (error) {
      console.error('HTTP File Upload Error:', error);
      throw error;
    }
  }
}
