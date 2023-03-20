/*
 *     Copyright (C) 2022  DanXi-Dev
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
import 'dart:core';

import 'package:dan_xi/model/danke/reviewer_achievements.dart';
import 'package:json_annotation/json_annotation.dart';

part 'review_extra.g.dart';

@JsonSerializable()
class ReviewExtra {
  List<ReviewerAchievement>? achievements;

  ReviewExtra(this.achievements);

  factory ReviewExtra.fromJson(Map<String, dynamic> json) =>
      _$ReviewExtraFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewExtraToJson(this);
}
