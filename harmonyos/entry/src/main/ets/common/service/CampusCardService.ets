import { HttpService } from './HttpService';
import { AuthService } from './AuthService';

export interface CampusCardRecord {
  time: string;
  location: string;
  amount: number;
  balance: number;
}

export class CampusCardService {
  private static instance: CampusCardService;
  private httpService: HttpService;
  private authService: AuthService;

  private constructor() {
    this.httpService = HttpService.getInstance();
    this.authService = AuthService.getInstance();
  }

  public static getInstance(): CampusCardService {
    if (!CampusCardService.instance) {
      CampusCardService.instance = new CampusCardService();
    }
    return CampusCardService.instance;
  }

  public async getBalance(): Promise<number> {
    try {
      const token = await this.authService.getCurrentUsername();
      const response = await this.httpService.get('https://your-campus-card-server.com/balance', {
        'Authorization': token
      });
      return parseFloat(response);
    } catch (error) {
      console.error('Get balance failed:', error);
      return 0;
    }
  }

  public async getConsumptionRecords(days: number = 30): Promise<CampusCardRecord[]> {
    try {
      const token = await this.authService.getCurrentUsername();
      const response = await this.httpService.get(`https://your-campus-card-server.com/records?days=${days}`, {
        'Authorization': token
      });
      return JSON.parse(response) as CampusCardRecord[];
    } catch (error) {
      console.error('Get consumption records failed:', error);
      return [];
    }
  }
}
