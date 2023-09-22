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

import 'package:dan_xi/model/danke/course_review.dart';
import 'package:json_annotation/json_annotation.dart';

part 'course.g.dart';

@JsonSerializable()
class Course {
  int? id;
  String? name;
  String? code;
  @JsonKey(name: 'code_id')
  String? codeId;
  double? credit;
  String? department;
  String? teachers;
  @JsonKey(name: 'max_student')
  int? maxStudent;
  @JsonKey(name: 'week_hour')
  int? weekHour;

  /// (Copied from docs)
  /// 学年。如果是非秋季学期，则年数为（实际日期年数 - 1）。
  int? year;

  /// (Copied from docs)
  /// 学期。
  //     1：秋季学期；
  //     2：（第二年的）寒假；
  //     3：（第二年的）春季学期；
  //     4：（第二年的）暑假
  int? semester;
  @JsonKey(name: 'coursegroup_id')
  int? courseGroupId;
  List<CourseReview>? reviewList;

  Course(this.id, this.teachers, this.maxStudent, this.year, this.semester,
      this.credit, this.reviewList);

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);

  Map<String, dynamic> toJson() => _$CourseToJson(this);

  factory Course.dummy() =>
      Course(1, "嘉然", 1145, 1919, 1, 4.9, [CourseReview.dummy()]);

  @override
  bool operator ==(Object other) => (other is Course) && id == other.id;

  @override
  int get hashCode => id ?? id.hashCode;

  String formatTime() {
    // Todo: add support for other semesters
    return "$year学年-${semester == 1 ? "秋季" : "春季"}";
  }
}
