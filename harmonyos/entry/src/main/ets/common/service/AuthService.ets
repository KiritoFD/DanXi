import { HttpService } from './HttpService';
import { StorageService } from './StorageService';
import promptAction from '@ohos.promptAction';
import router from '@ohos.router';

export class AuthService {
  private static instance: AuthService;
  private httpService: HttpService;
  private storageService: StorageService | null = null;

  private constructor() {
    this.httpService = HttpService.getInstance();
    StorageService.getInstance().then(service => {
      this.storageService = service;
    });
  }

  public static getInstance(): AuthService {
    if (!AuthService.instance) {
      AuthService.instance = new AuthService();
    }
    return AuthService.instance;
  }

  public async login(username: string, password: string): Promise<boolean> {
    try {
      const response = await this.httpService.post('https://your-auth-server.com/login', {
        username,
        password
      });

      const result = JSON.parse(response);
      if (result.success) {
        await this.storageService?.setString('token', result.token);
        await this.storageService?.setString('username', username);
        await this.storageService?.setObject('userInfo', result.userInfo || {});
        
        // 显示登录成功提示
        promptAction.showToast({
          message: '登录成功',
          duration: 2000
        });

        // 跳转到主页
        router.replaceUrl({ url: 'pages/CoursePage' });
        return true;
      } else {
        // 显示登录失败提示
        promptAction.showToast({
          message: result.message || '登录失败，请检查用户名和密码',
          duration: 2000
        });
        return false;
      }
    } catch (error) {
      console.error('Login failed:', error);
      
      // 显示网络错误提示
      promptAction.showToast({
        message: '网络错误，请检查网络连接',
        duration: 2000
      });
      
      return false;
    }
  }

  public async isLoggedIn(): Promise<boolean> {
    const token = await this.storageService?.getString('token');
    return !!token;
  }

  public async logout(): Promise<void> {
    try {
      // 可选：调用服务器注销接口
      await this.httpService.post('https://your-auth-server.com/logout', {
        token: await this.storageService?.getString('token')
      });
    } catch (error) {
      console.error('Logout server call failed:', error);
    }

    // 清除本地存储
    await this.storageService?.remove('token');
    await this.storageService?.remove('username');
    await this.storageService?.remove('userInfo');

    // 显示注销成功提示
    promptAction.showToast({
      message: '已成功注销',
      duration: 2000
    });

    // 跳转到登录页
    router.replaceUrl({ url: 'pages/LoginPage' });
  }

  public async getCurrentUsername(): Promise<string> {
    return await this.storageService?.getString('username', '') || '';
  }

  public async getUserInfo(): Promise<Object> {
    return await this.storageService?.getObject('userInfo', {}) || {};
  }
}
