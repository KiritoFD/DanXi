export class GlobalContext {
  private static instance: GlobalContext;
  private constructor() {}
  private contextMap: Map<string, any> = new Map();

  public static getContext(): GlobalContext {
    if (!GlobalContext.instance) {
      GlobalContext.instance = new GlobalContext();
    }
    return GlobalContext.instance;
  }

  public setObject(key: string, value: any): void {
    this.contextMap.set(key, value);
  }

  public getObject(key: string): any {
    return this.contextMap.get(key);
  }
}
