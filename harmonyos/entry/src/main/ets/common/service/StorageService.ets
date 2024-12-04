import storage from '@ohos.data.preferences';
import { GlobalContext } from '../utils/GlobalContext';

export class StorageService {
  private static instance: StorageService;
  private preferences: storage.Preferences | null = null;

  private constructor() {}

  public static async getInstance(): Promise<StorageService> {
    if (!this.instance) {
      this.instance = new StorageService();
      await this.instance.init();
    }
    return this.instance;
  }

  private async init(): Promise<void> {
    try {
      this.preferences = await storage.getPreferences(GlobalContext.getContext(), 'danxi_prefs');
    } catch (error) {
      console.error('Storage initialization error:', error);
      throw error;
    }
  }

  public async setString(key: string, value: string): Promise<void> {
    if (!this.preferences) {
      await this.init();
    }
    try {
      await this.preferences?.put(key, value);
      await this.preferences?.flush();
    } catch (error) {
      console.error(`Error setting string for key ${key}:`, error);
    }
  }

  public async getString(key: string, defaultValue: string = ''): Promise<string> {
    if (!this.preferences) {
      await this.init();
    }
    try {
      return await this.preferences?.get(key, defaultValue) as string;
    } catch (error) {
      console.error(`Error getting string for key ${key}:`, error);
      return defaultValue;
    }
  }

  public async setObject(key: string, value: Object): Promise<void> {
    try {
      await this.setString(key, JSON.stringify(value));
    } catch (error) {
      console.error(`Error setting object for key ${key}:`, error);
    }
  }

  public async getObject(key: string, defaultValue: Object = {}): Promise<Object> {
    try {
      const jsonStr = await this.getString(key);
      return jsonStr ? JSON.parse(jsonStr) : defaultValue;
    } catch (error) {
      console.error(`Error getting object for key ${key}:`, error);
      return defaultValue;
    }
  }

  public async remove(key: string): Promise<void> {
    try {
      await this.preferences?.delete(key);
      await this.preferences?.flush();
    } catch (error) {
      console.error(`Error removing key ${key}:`, error);
    }
  }

  public async setMultiStrings(keyValuePairs: Record<string, string>): Promise<void> {
    if (!this.preferences) {
      await this.init();
    }
    try {
      for (const [key, value] of Object.entries(keyValuePairs)) {
        await this.preferences?.put(key, value);
      }
      await this.preferences?.flush();
    } catch (error) {
      console.error('Error setting multiple strings:', error);
    }
  }

  public async removeMultiple(keys: string[]): Promise<void> {
    if (!this.preferences) {
      await this.init();
    }
    try {
      for (const key of keys) {
        await this.preferences?.delete(key);
      }
      await this.preferences?.flush();
    } catch (error) {
      console.error('Error removing multiple keys:', error);
    }
  }
}
