import router from '@ohos.router';
import promptAction from '@ohos.promptAction';
import { AuthService } from '../common/service/AuthService';
import http from '@ohos.net.http';
import { StorageService } from '../common/service/StorageService';

enum UserGroup {
  FUDAN_UNDERGRADUATE_STUDENT = 'FUDAN_UNDERGRADUATE_STUDENT',
  FUDAN_POSTGRADUATE_STUDENT = 'FUDAN_POSTGRADUATE_STUDENT',
  VISITOR = 'VISITOR'
}

const kUserGroupDescription = {
  [UserGroup.FUDAN_UNDERGRADUATE_STUDENT]: '本科生',
  [UserGroup.FUDAN_POSTGRADUATE_STUDENT]: '研究生',
  [UserGroup.VISITOR]: '游客'
}

@Entry
@Component
struct LoginPage {
  @State username: string = '';
  @State password: string = '';
  @State isLoading: boolean = false;
  @State userGroup: UserGroup = UserGroup.FUDAN_UNDERGRADUATE_STUDENT;
  @State errorText: string = '';

  private authService: AuthService = AuthService.getInstance();
  private storageService: StorageService | null = null;

  async aboutToAppear() {
    this.storageService = await StorageService.getInstance();
  }

  async login() {
    if (!this.username || !this.password) {
      this.errorText = '请输入用户名和密码';
      return;
    }

    this.isLoading = true;
    this.errorText = '';

    try {
      switch (this.userGroup) {
        case UserGroup.VISITOR:
          await this.visitorLogin();
          break;
        case UserGroup.FUDAN_UNDERGRADUATE_STUDENT:
        case UserGroup.FUDAN_POSTGRADUATE_STUDENT:
          await this.uisLogin();
          break;
      }
    } catch (error) {
      this.handleLoginError(error);
    } finally {
      this.isLoading = false;
    }
  }

  async visitorLogin() {
    await this.storageService?.setObject('userInfo', {
      id: this.username,
      password: this.password,
      name: '游客',
      userGroup: UserGroup.VISITOR
    });
    router.replaceUrl({ url: 'pages/CoursePage' });
  }

  async uisLogin() {
    const loginUrl = 'https://uis.fudan.edu.cn/authserver/login?service=http%3A%2F%2Fjwc.fudan.edu.cn%2Feb%2Fb7%2Fc9397a388023%2Fpage.psp';
    const httpRequest = http.createHttp();

    try {
      // 第一步：获取登录页面
      const loginPageResponse = await httpRequest.request(loginUrl, {
        method: http.RequestMethod.GET
      });

      // 解析登录页面，获取隐藏的表单字段
      const loginPageContent = loginPageResponse.result as string;
      const formData = this.parseLoginForm(loginPageContent);
      formData['username'] = this.username;
      formData['password'] = this.password;

      // 第二步：提交登录表单
      const loginResponse = await httpRequest.request(loginUrl, {
        method: http.RequestMethod.POST,
        header: {
          'Content-Type': 'application/x-www-form-urlencoded'
        },
        extraData: this.encodeFormData(formData)
      });

      // 检查登录结果
      const responseText = loginResponse.result as string;
      this.checkLoginResponse(responseText);

      // 保存用户信息
      await this.storageService?.setObject('userInfo', {
        id: this.username,
        password: this.password,
        name: await this.fetchStudentName(),
        userGroup: this.userGroup
      });

      router.replaceUrl({ url: 'pages/CoursePage' });
    } catch (error) {
      throw error;
    } finally {
      httpRequest.destroy();
    }
  }

  parseLoginForm(html: string): Record<string, string> {
    const formData: Record<string, string> = {};
    const inputMatches = html.match(/<input[^>]+name="([^"]+)"[^>]+value="([^"]*)"[^>]*>/g);
    
    if (inputMatches) {
      for (const match of inputMatches) {
        const nameMatch = match.match(/name="([^"]+)"/);
        const valueMatch = match.match(/value="([^"]*)"/);
        
        if (nameMatch && valueMatch) {
          formData[nameMatch[1]] = valueMatch[1];
        }
      }
    }
    
    return formData;
  }

  encodeFormData(data: Record<string, string>): string {
    return Object.entries(data)
      .map(([key, value]) => `${encodeURIComponent(key)}=${encodeURIComponent(value)}`)
      .join('&');
  }

  checkLoginResponse(responseText: string) {
    if (responseText.includes('密码有误')) {
      throw new Error('密码错误');
    }
    if (responseText.includes('请输入验证码')) {
      throw new Error('需要输入验证码');
    }
    if (responseText.includes('网络维护中')) {
      throw new Error('系统维护中');
    }
  }

  async fetchStudentName(): Promise<string> {
    // TODO: 实现获取学生姓名的逻辑
    return this.username;
  }

  handleLoginError(error: Error) {
    let errorMessage = '登录失败';
    
    switch (error.message) {
      case '密码错误':
        errorMessage = '用户名或密码错误';
        break;
      case '需要输入验证码':
        errorMessage = '需要输入验证码，请手动登录';
        break;
      case '系统维护中':
        errorMessage = '系统维护中，请稍后再试';
        break;
    }

    this.errorText = errorMessage;
    promptAction.showToast({
      message: errorMessage,
      duration: 2000
    });
  }

  @Builder
  loginHeader() {
    Column() {
      Image($r('app.media.app_icon'))
        .width(100)
        .height(100)
        .margin({ top: 50, bottom: 20 })
      
      Text('登录')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .margin({ bottom: 20 })
    }
    .width('100%')
    .alignItems(HorizontalAlign.Center)
  }

  @Builder
  loginForm() {
    Column() {
      // 用户组选择
      Row() {
        ForEach(Object.values(UserGroup), (group: UserGroup) => {
          Button(kUserGroupDescription[group])
            .backgroundColor(this.userGroup === group ? '#1698CE' : '#F0F0F0')
            .fontColor(this.userGroup === group ? Color.White : Color.Black)
            .margin({ right: 10 })
            .onClick(() => {
              this.userGroup = group;
            })
        })
      }
      .margin({ bottom: 20 })

      // 用户名输入
      TextInput({ 
        placeholder: '请输入用户名',
        text: this.username
      })
        .width('90%')
        .height(50)
        .margin({ bottom: 15 })
        .backgroundColor(Color.White)
        .borderRadius(10)
        .padding({ left: 15 })
        .onChange((value: string) => {
          this.username = value;
        })

      // 密码输入
      TextInput({ 
        placeholder: '请输入密码',
        text: this.password
      })
        .width('90%')
        .height(50)
        .margin({ bottom: 10 })
        .backgroundColor(Color.White)
        .borderRadius(10)
        .padding({ left: 15 })
        .type(InputType.Password)
        .onChange((value: string) => {
          this.password = value;
        })

      // 错误提示
      Text(this.errorText)
        .fontSize(14)
        .fontColor(Color.Red)
        .margin({ bottom: 10 })
        .opacity(this.errorText ? 1 : 0)

      // 登录按钮
      Button(this.isLoading ? '登录中...' : '登录')
        .width('90%')
        .height(50)
        .backgroundColor('#1698CE')
        .borderRadius(10)
        .margin({ bottom: 15 })
        .enabled(!this.isLoading)
        .onClick(() => {
          this.login();
        })

      // 忘记密码
      Text('忘记密码？')
        .fontSize(14)
        .fontColor(Color.Gray)
        .onClick(() => {
          promptAction.showToast({
            message: '请联系管理员找回密码',
            duration: 2000
          });
        })
    }
    .width('100%')
    .alignItems(HorizontalAlign.Center)
  }

  build() {
    Column() {
      // 顶部空白区域
      Blank().height('10%')

      // 登录头部
      this.loginHeader()

      // 登录表单
      this.loginForm()

      // 底部空白区域
      Blank()
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F1F3F5')
    .padding({ left: 20, right: 20 })
  }
}

export default LoginPage;
