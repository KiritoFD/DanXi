/*
 *     Copyright (C) 2021  DanXi-Dev
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

// import 'package:dan_xi/common/constant.dart';
import 'package:dan_xi/generated/l10n.dart';
import 'package:dan_xi/model/opentreehole/tag.dart';
// import 'package:dan_xi/provider/settings_provider.dart';
// import 'package:dan_xi/widget/libraries/platform_app_bar_ex.dart';
// import 'package:dan_xi/widget/opentreehole/ottag_selector.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

// import 'package:flutter/material.dart';

import '../../model/person.dart';
import '../../provider/state_provider.dart';
import '../../util/platform_universal.dart';
// import '../../widget/libraries/platform_context_menu.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Don't show campus selection if user is not logged in the UIS.
    if (StateProvider.personInfo.value?.group != UserGroup.VISITOR) {}

    return Card(
      child: Column(children: [
        ListTile(
          title: Text("复旦大学账户"),
          leading: PlatformX.isMaterial(context)
              ? const Icon(Icons.apartment_rounded)
              : const Icon(CupertinoIcons.building_2_fill),
          subtitle: Text(
              "${StateProvider.personInfo.value!.name} (${StateProvider.personInfo.value!.id})"),
          onTap: () {
            showPlatformDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context) => PlatformAlertDialog(
                title: Text(S.of(context).logout_question_prompt_title),
                content: Text(S.of(context).logout_question_prompt),
                actions: [
                  PlatformDialogAction(
                    child: Text(S.of(context).cancel),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  PlatformDialogAction(
                      child: Text(
                        S.of(context).i_see,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.error),
                      ),
                      onPressed: () {
                        // Navigator.of(context).pop();
                        // _deleteAllDataAndExit();
                      })
                ],
              ),
            );
          },
        ),
        // Campus
        // Don't show campus selection if user is not logged in the UIS
        ListTile(
          title: Text("FDUHole账户"),
          leading: PlatformX.isMaterial(context)
              ? const Icon(Icons.account_circle)
              : const Icon(CupertinoIcons.person_circle),
          subtitle: Text(
              "${StateProvider.personInfo.value!.name} (${StateProvider.personInfo.value!.id})"),
          onTap: () {
            showPlatformDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context) => PlatformAlertDialog(
                title: Text(S.of(context).logout_question_prompt_title),
                content: Text(S.of(context).logout_question_prompt),
                actions: [
                  PlatformDialogAction(
                    child: Text(S.of(context).cancel),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  PlatformDialogAction(
                      child: Text(
                        S.of(context).i_see,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.error),
                      ),
                      onPressed: () {
                        // Navigator.of(context).pop();
                        // _deleteAllDataAndExit();
                      })
                ],
              ),
            );
          },
        ),
        // ListTile(
        //   title: Text(S.of(context).default_campus),
        //   leading: PlatformX.isMaterial(context)
        //       ? const Icon(Icons.location_on)
        //       : const Icon(CupertinoIcons.location_fill),
        //   subtitle: Text(SettingsProvider.getInstance()
        //       .campus
        //       .displayTitle(context)),
        //   onTap: () => showPlatformModalSheet(
        //       context: context,
        //       builder: (BuildContext context) =>
        //           PlatformContextMenu(
        //               actions: _buildCampusAreaList(context),
        //               cancelButton: CupertinoActionSheetAction(
        //                   child: Text(S.of(context).cancel),
        //                   onPressed: () =>
        //                       Navigator.of(context).pop()))),
        // ),
      ]),
    );
  }
}
