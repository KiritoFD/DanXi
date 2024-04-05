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

import 'dart:async';

import 'package:dan_xi/common/constant.dart';
import 'package:dan_xi/generated/l10n.dart';
import 'package:dan_xi/provider/settings_provider.dart';
import 'package:dan_xi/provider/state_provider.dart' as sp;
import 'package:dan_xi/repository/fdu/bus_repository.dart';
import 'package:dan_xi/widget/libraries/error_page_widget.dart';
import 'package:dan_xi/widget/libraries/platform_app_bar_ex.dart';
import 'package:dan_xi/widget/libraries/top_controller.dart';
import 'package:dan_xi/widget/libraries/with_scrollbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bus.g.dart';

@riverpod
Future<List<BusScheduleItem>> busListWeekday(
    BusListWeekdayRef ref, List<BusScheduleItem>? initialData) async {
  if (initialData != null) {
    return initialData;
  }
  return await FudanBusRepository.getInstance()
      .loadBusList(sp.StateProvider.personInfo.value, holiday: false);
}

@riverpod
Future<List<BusScheduleItem>> busListHoliday(
    BusListHolidayRef ref, List<BusScheduleItem>? initialData) async {
  if (initialData != null) {
    return initialData;
  }
  return await FudanBusRepository.getInstance()
      .loadBusList(sp.StateProvider.personInfo.value, holiday: true);
}

class BusPageArguments {
  final bool dataIsHoliday;
  final List<BusScheduleItem> busList;

  BusPageArguments(this.dataIsHoliday, this.busList);
}

/// A list page showing campus bus schedule.
class BusPage extends HookConsumerWidget {
  final BusPageArguments arguments;

  const BusPage({super.key, required this.arguments});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weekdayProvider = busListWeekdayProvider(
      arguments.dataIsHoliday ? null : arguments.busList,
    );
    final holidayProvider = busListHolidayProvider(
      arguments.dataIsHoliday ? arguments.busList : null,
    );
    final holidaySliding = useState<int?>(arguments.dataIsHoliday ? 1 : 0);
    final currentProvider =
        holidaySliding.value == 0 ? weekdayProvider : holidayProvider;
    final scrollController = PrimaryScrollController.of(context);

    final startSelectItem = useState<Campus?>(Campus.HANDAN_CAMPUS);
    final endSelectItem =
        useState<Campus?>(SettingsProvider.getInstance().campus);
    final displayStartSelectItem = startSelectItem.value ?? Campus.NONE;
    final displayEndSelectItem = endSelectItem.value ?? Campus.NONE;

    return PlatformScaffold(
        appBar: PlatformAppBarX(
            title: TopController(
                controller: scrollController,
                child: Text(S.of(context).bus_query))),
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 4),
                child: CupertinoSlidingSegmentedControl<int>(
                  onValueChanged: (int? value) => holidaySliding.value = value,
                  groupValue: holidaySliding.value,
                  children: {
                    0: Text(S.of(context).weekday),
                    1: Text(S.of(context).holiday)
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(S.of(context).bus_start),
                  PlatformWidget(
                    material: (context, __) => DropdownButton<Campus>(
                      items: _getItems(context),
                      value: startSelectItem.value,
                      hint: Text(displayStartSelectItem.displayTitle(context)),
                      onChanged: (Campus? e) => startSelectItem.value = e,
                    ),
                    cupertino: (context, __) => Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 4),
                      child: CupertinoSlidingSegmentedControl<int>(
                        onValueChanged: (int? value) =>
                            startSelectItem.value = Campus.values[value!],
                        groupValue: displayStartSelectItem.index,
                        children: _getCupertinoItems(context),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(S.of(context).bus_dest),
                  PlatformWidget(
                    material: (_, __) => DropdownButton<Campus>(
                      items: _getItems(context),
                      value: endSelectItem.value,
                      hint: Text(displayEndSelectItem.displayTitle(context)),
                      onChanged: (Campus? e) => endSelectItem.value = e,
                    ),
                    cupertino: (_, __) => Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 4),
                      child: CupertinoSlidingSegmentedControl<int>(
                        onValueChanged: (int? value) {
                          endSelectItem.value = Campus.values[value!];
                        },
                        groupValue: displayEndSelectItem.index,
                        children: _getCupertinoItems(context),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: WithScrollbar(
                    controller: scrollController,
                    child: _buildFutureWidget(currentProvider,
                        displayStartSelectItem, displayEndSelectItem, ref)),
              ),
            ],
          ),
        ));
  }

  List<DropdownMenuItem<Campus>> _getItems(BuildContext context) =>
      Constant.CAMPUS_VALUES.map((e) {
        return DropdownMenuItem(value: e, child: Text(e.displayTitle(context)));
      }).toList(growable: false);

  Map<int, Text> _getCupertinoItems(BuildContext context) =>
      Constant.CAMPUS_VALUES
          .map((e) => Text(e.displayTitle(context)))
          .toList(growable: false)
          .asMap();

  Widget _buildFutureWidget(
      AutoDisposeFutureProvider<List<BusScheduleItem>> provider,
      Campus startSelectItem,
      Campus endSelectItem,
      WidgetRef ref) {
    final context = useContext();
    final data = ref.watch(provider);
    return switch (data) {
      AsyncData(:final value) => ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          children: _getListWidgets(
              _filterBus(value, startSelectItem, endSelectItem))),
      AsyncError(:final error, :final stackTrace) =>
        ErrorPageWidget.buildWidget(context, error,
            stackTrace: stackTrace, onTap: () => ref.refresh(provider)),
      _ => Center(child: PlatformCircularProgressIndicator()),
    };
  }

  void _swapBusDetails(BusScheduleItem element) {
    final start = element.start;
    element.start = element.end;
    element.end = start;
    final startTime = element.startTime;
    element.startTime = element.endTime;
    element.endTime = startTime;
  }

  List<BusScheduleItem> _filterBus(List<BusScheduleItem> origBusList,
      Campus startSelectItem, Campus endSelectItem) {
    // Normalize all backward entries and reversed dual entries
    for (var element in origBusList) {
      if (element.direction == BusDirection.BACKWARD) {
        _swapBusDetails(element);
        element.direction = BusDirection.FORWARD;
      } else if (element.direction == BusDirection.DUAL &&
          element.start == endSelectItem &&
          element.end == startSelectItem) {
        _swapBusDetails(element);
      }
    }
    return origBusList
        .where((element) =>
            (element.start == startSelectItem && element.end == endSelectItem))
        .toList();
  }

  List<Widget> _getListWidgets(List<BusScheduleItem>? filteredBusList) {
    final context = useContext();
    final showAll = useState(false);

    final currentTime = DateTime.now();
    final format = NumberFormat("00");
    List<Widget> widgets = [
      Card(
        child: ListTile(
          leading: Icon(PlatformIcons(context).info),
          title: Text(showAll.value
              ? S.of(context).school_bus_showing_all
              : S.of(context).school_bus_not_showing_all(
                  format.format(currentTime.hour),
                  format.format(currentTime.minute))),
          subtitle: Text(showAll.value
              ? S.of(context).school_bus_tap_to_not_show_all(
                  format.format(currentTime.hour),
                  format.format(currentTime.minute))
              : S.of(context).school_bus_tap_to_show_all),
          onTap: () => showAll.value = !showAll.value,
        ),
      )
    ];
    if (filteredBusList == null) return [const SizedBox()];
    for (var value in filteredBusList) {
      if (showAll.value ||
          value.realStartTime == null ||
          value.realStartTime!.toExactTime().isAfter(currentTime)) {
        widgets.add(_buildBusCard(context, value));
      }
    }
    return widgets;
  }

  Card _buildBusCard(BuildContext context, BusScheduleItem item) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      item.start.displayTitle(context),
                      textScaler: const TextScaler.linear(1.2),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(item.startTime?.toDisplayFormat() ?? ""),
                  ],
                ),
                Text(
                  item.direction.toText() ?? "",
                  textScaler: const TextScaler.linear(1.5),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      item.end.displayTitle(context),
                      textScaler: const TextScaler.linear(1.2),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(item.endTime?.toDisplayFormat() ?? ""),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
