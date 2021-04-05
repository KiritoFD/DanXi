/*
 *     Copyright (C) 2021  w568w
 *
 *     This program is free software: you can redistribute it and/or modify
 *     it under the terms of the GNU General Public License as published by
 *     the Free Software Foundation, either version 3 of the License, or
 *     (at your option) any later version.
 *
 *     This program is distributed in the hope that it will be useful,
 *     but WITHOUT ANY WARRANTY; without even the implied warranty of
 *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *     GNU General Public License for more details.
 *
 *     You should have received a copy of the GNU General Public License
 *     along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

import 'dart:async';
import 'dart:io';

import 'package:catcher/catcher.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dan_xi/common/Secret.dart';
import 'package:dan_xi/model/person.dart';
import 'package:dan_xi/page/bbs_editor.dart';
import 'package:dan_xi/page/bbs_post.dart';
import 'package:dan_xi/page/card_detail.dart';
import 'package:dan_xi/page/card_traffic.dart';
import 'package:dan_xi/page/platform_subpage.dart';
import 'package:dan_xi/page/subpage_bbs.dart';
import 'package:dan_xi/page/subpage_main.dart';
import 'package:dan_xi/page/subpage_timetable.dart';
import 'package:dan_xi/public_extension_methods.dart';
import 'package:dan_xi/repository/card_repository.dart';
import 'package:dan_xi/repository/qr_code_repository.dart';
import 'package:dan_xi/util/ScreenProxy.dart';
import 'package:dan_xi/util/fdu_wifi_detection.dart';
import 'package:dan_xi/util/flutter_app.dart';
import 'package:dan_xi/util/wifi_utils.dart';
import 'package:data_plugin/bmob/bmob.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_progress_dialog/flutter_progress_dialog.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:quick_actions/quick_actions.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'generated/l10n.dart';

final QuickActions quickActions = QuickActions();

void main() {
  CatcherOptions debugOptions = CatcherOptions(PageReportMode(), [
    ConsoleHandler()
  ], localizationOptions: [
    LocalizationOptions.buildDefaultEnglishOptions(),
    LocalizationOptions.buildDefaultChineseOptions(),
  ]);
  Bmob.init("https://api2.bmob.cn", Secret.APP_ID, Secret.API_KEY);
  Catcher(
      rootWidget: DanxiApp(),
      debugConfig: debugOptions,
      releaseConfig: debugOptions);
}

class DanxiApp extends StatelessWidget {
  /// Routes to every pages.
  final Map<String, Function> routes = {
    '/card/detail': (context, {arguments}) =>
        CardDetailPage(arguments: arguments),
    '/card/crowdData': (context, {arguments}) =>
        CardCrowdData(arguments: arguments),
    '/bbs/postDetail': (context, {arguments}) =>
        BBSPostDetail(arguments: arguments),
    '/bbs/newPost': (context, {arguments}) =>
        BBSEditorPage(arguments: arguments),
  };

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return PlatformProvider(
      // initialPlatform: TargetPlatform.iOS,
        builder: (BuildContext context) => PlatformApp(
              title: "DanXi",
              material: (_, __) => MaterialAppData(
                  theme: ThemeData(
                    brightness: Brightness.light,
                    primarySwatch: Colors.deepPurple,
                    // cardTheme: CardTheme(
                    //   color: Colors.grey, //TODO: Delete
                    //   elevation: 5,
                    // ),
                  ),
                  darkTheme: ThemeData(
                    brightness: Brightness.dark,
                    bottomNavigationBarTheme: BottomNavigationBarThemeData(
                        selectedIconTheme: IconThemeData(color: Colors.white),
                        unselectedIconTheme: IconThemeData(color: Colors.white),
                        selectedItemColor: Colors.white,
                        unselectedItemColor: Colors.white),
                    cardTheme: CardTheme(
                      elevation: 5,
                      color: Colors.grey,
                    ),
                    textTheme: new TextTheme(
                      bodyText2: new TextStyle(color: Colors.red),
                      headline1: new TextStyle(fontSize: 78),
                      button: new TextStyle(color: Colors.green),
                    ),
                  )),
              localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate
              ],
              supportedLocales: S.delegate.supportedLocales,
              home: HomePage(),
              onGenerateRoute: (settings) {
                final Function pageContentBuilder = this.routes[settings.name];
                if (pageContentBuilder != null) {
                  return platformPageRoute(
                      context: context,
                      builder: (context) => pageContentBuilder(context,
                          arguments: settings.arguments));
                }
                return null;
              },
              navigatorKey: Catcher.navigatorKey,
            ));
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class QR {
  static void showQRCode(
      BuildContext context, PersonInfo personInfo, double brightness) {
    //Set screen brightness for displaying QR Code
    ScreenProxy.keepOn(true);
    ScreenProxy.setBrightness(1.0);

    //Get current theme (light/dark)
    bool darkModeOn =
        MediaQuery.of(context).platformBrightness == Brightness.dark;

    showPlatformDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return PlatformAlertDialog(
            title: Text(S.of(context).fudan_qr_code),
            content: Container(
                width: double.maxFinite,
                height: 200.0,
                child: Center(
                    child: FutureBuilder<String>(
                        future: QRCodeRepository.getInstance()
                            .getQRCode(personInfo),
                        builder: (BuildContext context,
                            AsyncSnapshot<String> snapshot) {
                          return snapshot.hasData
                              ? QrImage(
                                  data: snapshot.data,
                                  size: 200.0,
                                  foregroundColor:
                                      darkModeOn ? Colors.white : Colors.black)
                              : Text(S.of(context).loading_qr_code);
                        }))),
            actions: <Widget>[
              PlatformDialogAction(
                  child: PlatformText(S.of(context).i_see),
                  onPressed: () {
                    ScreenProxy.setBrightness(brightness);
                    ScreenProxy.keepOn(false);
                    Navigator.pop(context);
                  }),
            ],
          );
        });
  }
}

class _HomePageState extends State<HomePage> {
  //watchOS Support
  static const channel = const MethodChannel('myWatchChannel');
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });

    channel.invokeMethod("sendStringToNative", _counter.toString());
  }

  SharedPreferences _preferences;

  ValueNotifier<PersonInfo> _personInfo = ValueNotifier(null);

  /// A description for current connection status.
  ValueNotifier<String> _connectStatus = ValueNotifier("");

  /// Listener to connectivity changes.
  StreamSubscription<ConnectivityResult> _connectivitySubscription;

  ValueNotifier<int> _pageIndex = ValueNotifier(0);

  /// List of all of the subpages. They will be displayed as tab pages.
  final List<PlatformSubpage> _subpage = [
    HomeSubpage(),
    BBSSubpage(),
    TimetableSubPage()
  ];

  /// List of all of the subpages' action button icon. They will show on the appbar of each tab page.
  final List<Function> _subpageActionButtonIconBuilders = [
    (cxt) => Icons.login,
    (cxt) => PlatformIcons(cxt).add,
    (cxt) => Icons.share
  ];

  /// List of all of the subpage action buttons' description. They will show on the appbar of each tab page.
  final List<Function> _subpageActionButtonTextBuilders = [
    (cxt) => S.of(cxt).change_account,
    (cxt) => S.of(cxt).new_post,
    (cxt) => S.of(cxt).share,
  ];

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    _connectivitySubscription = null;
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    // Listening to the network state.
    _connectivitySubscription = WiFiUtils.getConnectivity()
        .onConnectivityChanged
        .listen((_) => _loadNetworkState());

    _loadOrInitSharedPreference().then((_) {
      // Configure shortcut listeners on Android & iOS.
      if (!kIsWeb && (Platform.isAndroid || Platform.isIOS))
        quickActions.initialize((shortcutType) {
          if (shortcutType == 'action_qr_code' && _personInfo != null) {
            QR.showQRCode(context, _personInfo.value, _brightness);
          }
        });
    });
    _loadNetworkState();
    // Add shortcuts on Android & iOS.
    if (!kIsWeb && (Platform.isAndroid || Platform.isIOS))
      quickActions.setShortcutItems(<ShortcutItem>[
        ShortcutItem(
            type: 'action_qr_code',
            localizedTitle: S.current.fudan_qr_code,
            icon: 'ic_launcher'),
      ]);
    initPlatformState(); //Init brightness control
  }

  /// Current brightness
  double _brightness = 1.0;

  /// get current brightness so that we can restore it after showing QR code.
  initPlatformState() async {
    _brightness = await ScreenProxy.brightness;
  }

  /// Attempt to log in for verification.
  Future<void> _tryLogin(String id, String password) async {
    if (id.length * password.length == 0) {
      return;
    }
    var progressDialog = showProgressDialog(
        loadingText: S.of(context).logining, context: context);
    PersonInfo newInfo = PersonInfo.createNewInfo(id, password);
    await CardRepository.getInstance().login(newInfo).then((_) async {
      newInfo.name = await CardRepository.getInstance().getName();
      await newInfo.saveAsSharedPreferences(_preferences);
      setState(() => _personInfo.value = newInfo);
      progressDialog.dismiss();
      Navigator.of(context).pop();
    }, onError: (e) => {progressDialog.dismiss(), throw e});
  }

  /// Pop up a dialog where user can give his name & password.
  void _showLoginDialog({bool forceLogin = false}) {
    TextEditingController nameController = new TextEditingController();
    TextEditingController pwdController = new TextEditingController();
    showPlatformDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return PlatformAlertDialog(
            title: Text(S.of(context).login_uis),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                PlatformTextField(
                  controller: nameController,
                  keyboardType: TextInputType.number,
                  material: (_, __) => MaterialTextFieldData(
                      decoration: InputDecoration(
                          labelText: S.of(context).login_uis_uid,
                          icon: Icon(Icons.perm_identity))),
                  cupertino: (_, __) => CupertinoTextFieldData(
                      placeholder: S.of(context).login_uis_uid),
                  autofocus: true,
                ),
                PlatformTextField(
                  controller: pwdController,
                  material: (_, __) => MaterialTextFieldData(
                    decoration: InputDecoration(
                        labelText: S.of(context).login_uis_pwd,
                        icon: Icon(Icons.lock_outline)),
                  ),
                  cupertino: (_, __) => CupertinoTextFieldData(
                      placeholder: S.of(context).login_uis_pwd),
                  obscureText: true,
                  onSubmitted: (_) =>
                      _tryLogin(nameController.text, pwdController.text),
                )
              ],
            ),
            actions: [
              PlatformDialogAction(
                child: Text(S.of(context).cancel),
                onPressed: () {
                  if (forceLogin) {
                    Navigator.of(context).pop();
                  } else {
                    FlutterApp.exitApp();
                  }
                },
              ),
              PlatformDialogAction(
                child: Text(S.of(context).login),
                onPressed: () =>
                    _tryLogin(nameController.text, pwdController.text),
              )
            ],
          );
        });
  }

  /// Load persistent data (e.g. user name, password, etc.) from the local storage.
  ///
  /// If user hasn't logged in before, request him to do so.
  Future<void> _loadOrInitSharedPreference({bool forceLogin = false}) async {
    _preferences = await SharedPreferences.getInstance();

    if (!forceLogin && _preferences.containsKey("id")) {
      setState(() =>
          _personInfo.value = PersonInfo.fromSharedPreferences(_preferences));
    } else {
      _showLoginDialog(forceLogin: forceLogin);
    }
  }

  /// Load network ssid
  Future<void> _loadNetworkState() async {
    ConnectivityResult connectivity =
        await WiFiUtils.getConnectivity().checkConnectivity();
    if (connectivity == ConnectivityResult.wifi) {
      Map result;
      try {
        result = await WiFiUtils.getWiFiInfo(connectivity);
      } catch (ignored) {}
      setState(() {
        _connectStatus.value = result == null || result['name'] == null
            ? S.current.current_connection_failed
            : FDUWiFiConverter.recognizeWiFi(result['name']);
      });
    } else {
      setState(() {
        _connectStatus.value = S.of(context).current_connection_no_wifi;
      });
    }
  }

  /// When user clicks the action button on appbar
  void _onPressActionButton() async {
    switch (_pageIndex.value) {
      case 0:
        await _loadOrInitSharedPreference(forceLogin: true);
        break;
      case 1:
        AddNewPostEvent().fire();
        break;
      case 2:
        ShareTimetableEvent().fire();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return _personInfo.value == null
    // Empty container if no person info is set
        ? PlatformScaffold(
            iosContentBottomPadding: true,
            iosContentPadding: true,
            appBar: PlatformAppBar(
              title: Text(S.of(context).app_name),
              trailingActions: [
                PlatformIconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(_subpageActionButtonIconBuilders[_pageIndex.value](
                      context)),
                  onPressed: _onPressActionButton,
                )
              ],
            ),
            body: Container(),
          )
        : PlatformScaffold(
            iosContentBottomPadding: true,
            iosContentPadding: _subpage[_pageIndex.value].needPadding,
            appBar: PlatformAppBar(
              title: Text(
                S.of(context).app_name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              trailingActions: [
                PlatformIconButton(
                  material: (_, __) => MaterialIconButtonData(
                      tooltip:
                          _subpageActionButtonTextBuilders[_pageIndex.value](
                              context)),
                  padding: EdgeInsets.zero,
                  icon: Icon(_subpageActionButtonIconBuilders[_pageIndex.value](
                      context)),
                  onPressed: _onPressActionButton,
                )
              ],
            ),
            body: MultiProvider(
              providers: [
                ChangeNotifierProvider.value(value: _pageIndex),
                ChangeNotifierProvider.value(value: _connectStatus),
                ChangeNotifierProvider.value(value: _personInfo),
              ],
              child: IndexedStack(index: _pageIndex.value, children: _subpage),
            ),
            bottomNavBar: PlatformNavBar(
              items: [
                BottomNavigationBarItem(
                  backgroundColor: Colors.purple,
                  icon: Icon(Icons.dashboard),
                  label: S.of(context).dashboard,
                ),
                BottomNavigationBarItem(
                  backgroundColor: Colors.indigo,
                  icon: Icon(Icons.forum),
                  label: S.of(context).forum,
                ),
                BottomNavigationBarItem(
                  backgroundColor: Colors.blue,
                  icon: Icon(Icons.calendar_today),
                  label: S.of(context).timetable,
                ),
              ],
              currentIndex: _pageIndex.value,
              material: (_, __) => MaterialNavBarData(
                type: BottomNavigationBarType.shifting,
                selectedIconTheme:
                    BottomNavigationBarTheme.of(context).selectedIconTheme,
                unselectedIconTheme:
                    BottomNavigationBarTheme.of(context).unselectedIconTheme,
              ),
              itemChanged: (index) {
                if (index != _pageIndex.value) {
                  setState(() => _pageIndex.value = index);
                }
              },
            ),
          );
  }
}
