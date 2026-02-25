// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh_Hans locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'zh_Hans';

  static String m0(floor) => "您即将删除帖子 #${floor}";

  static String m1(review) => "您即将删除帖子 #${review}";

  static String m2(date) => "您在 ${date} 前不能在此分区发帖";

  static String m3(days) => "${days} 天";

  static String m4(num) => "${num}天前";

  static String m5(date) => "开发组公告 ${date}";

  static String m6(available, used) => "剩余：${available} kWh；已用：${used} kWh";

  static String m7(name) => "添加考试“${name}”时出错";

  static String m8(path) => "日志文件已导出到临时文件：${path}，请自行处理该文件。";

  static String m9(tag) => "按照\"${tag}\"筛选";

  static String m10(id) => "已登录 (ID：${id})";

  static String m11(stopWord) =>
      "内容中含有不适宜使用的词汇：${stopWord}。\n我们不建议发送此类词语，因为它不适用于理性讨论的环境，因而更有可能招致攻击和不恰当言论，一定要继续发送吗？";

  static String m12(num) => "${num}小时前";

  static String m13(name) => "我已阅读并同意 ${name}";

  static String m14(date) => "最近更新：${date}";

  static String m15(username, date) => "${username} 于${date}回复：";

  static String m16(level) => "等级 ${level}";

  static String m17(likes) => "点赞 (${likes})";

  static String m18(likes) => "已赞 (${likes})";

  static String m19(QQ) =>
      "如果您登录时遇到问题，请联系 dev@danta.tech 或加入 QQ 群 ${QQ}.\n\n与此同时，建议您阅读开发组公告，您遇到的问题可能已经在其中被提及。";

  static String m20(num) => "${num}分钟前";

  static String m21(name) => "正在修改 #${name}";

  static String m22(name) => "正在修改 ##${name}";

  static String m23(mostCrowded, leastCrowded) =>
      "[排队最多]${mostCrowded}餐厅 [排队最少]${leastCrowded}餐厅";

  static String m24(currentVersion, latestVersion) =>
      "当前版本：${currentVersion}\n最新版本：${latestVersion}\n\n更新日志：";

  static String m25(courseName, courseLeft) =>
      "下一节课是${courseName}，今日还有${courseLeft}节课";

  static String m26(email) => "我们的邮箱是 ${email} 。";

  static String m27(time) => "发帖时间：${time}";

  static String m28(error) => "您可能暂时无法收到推送通知\n错误：${error}";

  static String m29(count) => "此次测试中，有 ${count} 道题未能正确回答，请点击按钮重做错题";

  static String m30(id) => "请填写举报理由(#${id})";

  static String m31(name) => "回复 #${name}";

  static String m32(name) => "回复 ##${name}";

  static String m33(hh, mm) => "仅显示 ${hh}:${mm} 以后的校车班次";

  static String m34(hh, mm) => "点击以筛选 ${hh}:${mm} 以后的校车班次";

  static String m35(floorId) => "跳转到楼层「${floorId}」";

  static String m36(pid) => "跳转到帖子「${pid}」";

  static String m37(tag) => "查看本分区含 Tag「${tag}」的帖子";

  static String m38(searchKeyword) => "精确搜索正文含「${searchKeyword}」的帖子";

  static String m39(searchKeyword) => "搜索正文含「${searchKeyword}」的帖子";

  static String m40(seats) => "座位数：${seats}";

  static String m41(num) => "${num}秒前";

  static String m42(schoolYear, semName) => "${schoolYear}学年 ${semName}学期";

  static String m43(semesterName) =>
      "我们对该学期(${semesterName})的开学日期尚不了解，请手动设置开学日期";

  static String m44(view) => "浏览量：${view}";

  static String m45(week) => "第 ${week} 周";

  static String m46(name) => "欢迎你，${name}";

  static String m47(rank, credits) => "总学分数${credits}，绩点排名第${rank}名，点击查看详情";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "Dest1n1_description": MessageLookupByLibrary.simpleMessage("茶楼前端"),
    "Frankstein73_description": MessageLookupByLibrary.simpleMessage("旦挞开发者"),
    "KYLN24_description": MessageLookupByLibrary.simpleMessage("茶楼前端"),
    "about": MessageLookupByLibrary.simpleMessage("关于本应用"),
    "about_to_delete_floor": m0,
    "about_to_delete_review": m1,
    "accessibility_coloring": MessageLookupByLibrary.simpleMessage(
      "辅助功能：高对比度颜色",
    ),
    "account": MessageLookupByLibrary.simpleMessage("账户"),
    "account_is_set": MessageLookupByLibrary.simpleMessage("账户已设置完成"),
    "acknowledgements": MessageLookupByLibrary.simpleMessage("致谢"),
    "acknowledgements_markdown": MessageLookupByLibrary.simpleMessage(
      "我们感谢 [IvanFei](https://github.com/ivanfei-1) 为本 App 设计图标，[MSapphire](https://www.xiaohongshu.com/user/profile/6575475f000000001902d794)、[Lin2510]()、[zzz111]() 为本 App 贡献表情包等艺术设计。",
    ),
    "add": MessageLookupByLibrary.simpleMessage("添加"),
    "add_class_time": MessageLookupByLibrary.simpleMessage("添加上课时间"),
    "add_courses": MessageLookupByLibrary.simpleMessage("手动添加课程"),
    "add_image": MessageLookupByLibrary.simpleMessage("添加图片"),
    "add_new_card": MessageLookupByLibrary.simpleMessage("新建卡片"),
    "add_new_divider": MessageLookupByLibrary.simpleMessage("新建分割线"),
    "add_new_tag": MessageLookupByLibrary.simpleMessage("增加新的标签"),
    "add_special_tag": MessageLookupByLibrary.simpleMessage("新增特殊 Flag"),
    "admin_options": MessageLookupByLibrary.simpleMessage("管理操作"),
    "after_enabled": MessageLookupByLibrary.simpleMessage("开启后"),
    "afternoon": MessageLookupByLibrary.simpleMessage("下午"),
    "agree_license_tip": MessageLookupByLibrary.simpleMessage("您需要阅读并同意以下协议"),
    "all": MessageLookupByLibrary.simpleMessage("全部"),
    "all_tags": MessageLookupByLibrary.simpleMessage("所有标签"),
    "already_set": MessageLookupByLibrary.simpleMessage("已经设定"),
    "and_more": MessageLookupByLibrary.simpleMessage("… 等"),
    "app_description": MessageLookupByLibrary.simpleMessage(
      "由几位复旦本科学生用爱发电打造的微型复旦综合服务 App，希望能为你的生活提供便利~",
    ),
    "app_description_title": MessageLookupByLibrary.simpleMessage("简介"),
    "app_feedback": MessageLookupByLibrary.simpleMessage("【反馈】"),
    "app_name": MessageLookupByLibrary.simpleMessage("旦挞校园助手"),
    "are_you_sure": MessageLookupByLibrary.simpleMessage("确定删除？"),
    "are_you_sure_pin_unpin": MessageLookupByLibrary.simpleMessage(
      "确定置顶/取消置顶？",
    ),
    "authors": MessageLookupByLibrary.simpleMessage("开发者"),
    "background_image": MessageLookupByLibrary.simpleMessage("背景图片"),
    "background_image_already_set": MessageLookupByLibrary.simpleMessage(
      "背景图片已设定，是否移除？",
    ),
    "background_image_description": MessageLookupByLibrary.simpleMessage(
      "选择一张图片作为茶楼背景",
    ),
    "ban_post_until": m2,
    "ban_reporter": MessageLookupByLibrary.simpleMessage("封禁举报人"),
    "ban_reporter_days": m3,
    "ban_reporter_reason_hint": MessageLookupByLibrary.simpleMessage(
      "封禁理由（可选）",
    ),
    "ban_reporter_tip": MessageLookupByLibrary.simpleMessage(
      "注意：此操作将封禁提交该举报的用户，而非被举报的用户。",
    ),
    "before_enabled": MessageLookupByLibrary.simpleMessage("开启前"),
    "boreas618_description": MessageLookupByLibrary.simpleMessage("旦挞开发者"),
    "bus_dest": MessageLookupByLibrary.simpleMessage("终点站"),
    "bus_query": MessageLookupByLibrary.simpleMessage("校车班次"),
    "bus_start": MessageLookupByLibrary.simpleMessage("始发站"),
    "cache_cleared": MessageLookupByLibrary.simpleMessage("缓存已清空"),
    "cancel": MessageLookupByLibrary.simpleMessage("取消"),
    "cannot_launch_url": MessageLookupByLibrary.simpleMessage("无法打开此链接"),
    "cant_login": MessageLookupByLibrary.simpleMessage("无法登录？"),
    "captcha_needed": MessageLookupByLibrary.simpleMessage(
      "需要输入验证码，请遵循屏幕上的提示。",
    ),
    "choose_area": MessageLookupByLibrary.simpleMessage("选择校区"),
    "choose_semester": MessageLookupByLibrary.simpleMessage("学期选择："),
    "choose_semester_message": MessageLookupByLibrary.simpleMessage(
      "选择你想查看的学期",
    ),
    "choose_your_email_below": MessageLookupByLibrary.simpleMessage(
      "从下面的选项中选择您的邮箱",
    ),
    "classroom": MessageLookupByLibrary.simpleMessage("教室"),
    "clear": MessageLookupByLibrary.simpleMessage("清除"),
    "clear_cache": MessageLookupByLibrary.simpleMessage("清空图片缓存"),
    "clear_cache_description": MessageLookupByLibrary.simpleMessage(
      "下次查看时，图片将重新加载",
    ),
    "clear_history_confirm": MessageLookupByLibrary.simpleMessage(
      "是否清除本地浏览记录？清除后无法恢复。",
    ),
    "community_convention": MessageLookupByLibrary.simpleMessage("社区公约"),
    "confirm": MessageLookupByLibrary.simpleMessage("确定"),
    "confirm_delete_image": MessageLookupByLibrary.simpleMessage(
      "确认从编辑器中删除该图片吗？注意：若有多个相同图片，会删除全部。",
    ),
    "connection_cancelled": MessageLookupByLibrary.simpleMessage("连接被异常断开"),
    "connection_timeout": MessageLookupByLibrary.simpleMessage("网络连接超时"),
    "contact_us": MessageLookupByLibrary.simpleMessage("联系我们"),
    "continue_sending": MessageLookupByLibrary.simpleMessage("继续发送"),
    "copy": MessageLookupByLibrary.simpleMessage("全部复制"),
    "copy_floor_id": MessageLookupByLibrary.simpleMessage("拷贝楼层号"),
    "copy_floor_id_success": MessageLookupByLibrary.simpleMessage(
      "楼层号已保存至剪贴板。",
    ),
    "copy_hole_id": MessageLookupByLibrary.simpleMessage("拷贝洞号"),
    "copy_hole_id_success": MessageLookupByLibrary.simpleMessage("洞号已保存至剪贴板。"),
    "copy_password": MessageLookupByLibrary.simpleMessage("复制密码"),
    "copy_qq_group_id": MessageLookupByLibrary.simpleMessage("复制 QQ 群号"),
    "copy_success": MessageLookupByLibrary.simpleMessage("复制成功"),
    "course_available_week": MessageLookupByLibrary.simpleMessage("开课星期"),
    "course_id": MessageLookupByLibrary.simpleMessage("课程代码"),
    "course_name": MessageLookupByLibrary.simpleMessage("课程名称"),
    "course_room_name": MessageLookupByLibrary.simpleMessage("教室"),
    "course_schedule": MessageLookupByLibrary.simpleMessage("上课时间"),
    "course_teacher_name": MessageLookupByLibrary.simpleMessage("教师姓名"),
    "credentials_invalid": MessageLookupByLibrary.simpleMessage("您输入的用户名或密码有误"),
    "credits": MessageLookupByLibrary.simpleMessage("学分"),
    "current_date": MessageLookupByLibrary.simpleMessage("当前日期："),
    "curriculum": MessageLookupByLibrary.simpleMessage("评教"),
    "curriculum_average_rating": MessageLookupByLibrary.simpleMessage("平均评价"),
    "curriculum_details": MessageLookupByLibrary.simpleMessage("课程详情"),
    "curriculum_enter_content": MessageLookupByLibrary.simpleMessage("请输入评论内容"),
    "curriculum_enter_title": MessageLookupByLibrary.simpleMessage("请输入标题"),
    "curriculum_ratings_assessment": MessageLookupByLibrary.simpleMessage(
      "考核要求",
    ),
    "curriculum_ratings_assessment_words": MessageLookupByLibrary.simpleMessage(
      "非常严格;严格;中等;宽松;非常宽松",
    ),
    "curriculum_ratings_content": MessageLookupByLibrary.simpleMessage("课程风格"),
    "curriculum_ratings_content_words": MessageLookupByLibrary.simpleMessage(
      "硬核;较难;中等;容易;非常容易",
    ),
    "curriculum_ratings_overall": MessageLookupByLibrary.simpleMessage("总体评价"),
    "curriculum_ratings_overall_words": MessageLookupByLibrary.simpleMessage(
      "特别差评;差评;中等;好评;特别好评",
    ),
    "curriculum_ratings_workload": MessageLookupByLibrary.simpleMessage("工作量"),
    "curriculum_ratings_workload_words": MessageLookupByLibrary.simpleMessage(
      "非常大;较大;中等;较小;非常小",
    ),
    "curriculum_search_hint": MessageLookupByLibrary.simpleMessage(
      "课程名称、代码 或 教师姓名",
    ),
    "curriculum_select_teacher": MessageLookupByLibrary.simpleMessage("请选择教师"),
    "curriculum_select_time": MessageLookupByLibrary.simpleMessage("请选择上课时间"),
    "curriculum_unknown_rating": MessageLookupByLibrary.simpleMessage("未知"),
    "danxi_care": MessageLookupByLibrary.simpleMessage("旦挞团队关怀"),
    "danxi_care_message": MessageLookupByLibrary.simpleMessage(
      "亲爱的洞友：\n\n不知道你为什么提及这个话题。如果存在伤害自己的想法，你遇到了什么事呢？或许生存的痛苦对你来说远大于死亡，又或者现实中没有你信任的、愿意倾诉的人，那么欢迎你将旦挞茶楼作为真正的树洞。大家未必能真正理解你，毕竟理解本来就是很难的事情。不过试着分享你的经历、想法、情绪，说不定能梳理思路，发现困境的转机。\n\n很遗憾，旦挞团队没有专业的心理援助成员，但我们准备了下面这个[「小药箱」](https://danxi-dev.feishu.cn/docx/Trr5dEPfjoC97HxRklKccr1Ynyd?from=from_copylink)，真的好希望你能花费一点时间，停下来看一看。",
    ),
    "dashboard": MessageLookupByLibrary.simpleMessage("首页"),
    "dashboard_layout": MessageLookupByLibrary.simpleMessage("首页布局"),
    "data_center_unavailable_2026_0117": MessageLookupByLibrary.simpleMessage(
      "当前已切换至备用的数据中心来源，但该来源暂时不可用。请重新启动应用或清除缓存后再试。",
    ),
    "date_range_select": MessageLookupByLibrary.simpleMessage("选择日期范围"),
    "day_ago": m4,
    "default_campus": MessageLookupByLibrary.simpleMessage("当前校区"),
    "default_language": MessageLookupByLibrary.simpleMessage("语言"),
    "delete": MessageLookupByLibrary.simpleMessage("删除"),
    "delete_floor": MessageLookupByLibrary.simpleMessage("删除本层"),
    "delete_image": MessageLookupByLibrary.simpleMessage("删除图片"),
    "delete_this_tag": MessageLookupByLibrary.simpleMessage("删除此标签？"),
    "deleted": MessageLookupByLibrary.simpleMessage("已删除"),
    "developer_announcement": m5,
    "diagnostic_information": MessageLookupByLibrary.simpleMessage("诊断信息"),
    "dining_hall_crowdedness": MessageLookupByLibrary.simpleMessage("食堂排队消费状况"),
    "disabled": MessageLookupByLibrary.simpleMessage("已禁用"),
    "divider": MessageLookupByLibrary.simpleMessage("分割线"),
    "dorm_electricity": MessageLookupByLibrary.simpleMessage("寝室电量"),
    "dorm_electricity_history": MessageLookupByLibrary.simpleMessage("历史用电"),
    "dorm_electricity_subtitle": m6,
    "ecard_balance": MessageLookupByLibrary.simpleMessage("校园卡余额"),
    "ecard_balance_log": MessageLookupByLibrary.simpleMessage("消费记录"),
    "elementNotFound": MessageLookupByLibrary.simpleMessage("未找到要跳转的元素"),
    "email": MessageLookupByLibrary.simpleMessage("邮箱"),
    "empty_classrooms": MessageLookupByLibrary.simpleMessage("空教室"),
    "enable": MessageLookupByLibrary.simpleMessage("启用"),
    "enabled": MessageLookupByLibrary.simpleMessage("已启用"),
    "end_reached": MessageLookupByLibrary.simpleMessage("已经到底了"),
    "english_language": MessageLookupByLibrary.simpleMessage("英文"),
    "enhanced_auth_cancelled": MessageLookupByLibrary.simpleMessage(
      "验证未完成，部分功能可能暂时无法使用。",
    ),
    "enhanced_auth_continue": MessageLookupByLibrary.simpleMessage("继续"),
    "enhanced_auth_description": MessageLookupByLibrary.simpleMessage(
      "该校园服务需要双因素认证（2FA）。\n即将打开浏览器，账号密码将自动填入，请在浏览器中完成验证。",
    ),
    "enhanced_auth_title": MessageLookupByLibrary.simpleMessage("需要双因素认证"),
    "enhanced_auth_waiting": MessageLookupByLibrary.simpleMessage(
      "请在浏览器中完成身份验证…",
    ),
    "enter_app": MessageLookupByLibrary.simpleMessage("进入应用"),
    "enter_captcha": MessageLookupByLibrary.simpleMessage("请输入验证码"),
    "enter_forum": MessageLookupByLibrary.simpleMessage("开始茶楼之旅"),
    "entry_permission": MessageLookupByLibrary.simpleMessage("入校权限"),
    "error_adding_exam": m7,
    "error_detail": MessageLookupByLibrary.simpleMessage("详细信息"),
    "evening": MessageLookupByLibrary.simpleMessage("晚上"),
    "exam_schedule": MessageLookupByLibrary.simpleMessage("考试和成绩"),
    "exam_unavailable": MessageLookupByLibrary.simpleMessage("考试数据不可用"),
    "export_log_confirmation": MessageLookupByLibrary.simpleMessage(
      "导出前请确认：\n1. 在本次应用运行期间内最近发生过错误。如果没有，请先重现错误，然后立刻返回这里重新导出日志；\n2. 要求你分享日志的是可信的开发者。日志中可能包含你的个人敏感信息（包括登录凭据），请谨慎分享。\n\n确认导出日志？",
    ),
    "export_log_exporting": MessageLookupByLibrary.simpleMessage("导出日志中…"),
    "export_log_success": MessageLookupByLibrary.simpleMessage("导出成功"),
    "export_log_to_path": m8,
    "failed": MessageLookupByLibrary.simpleMessage("加载失败"),
    "failed_exam_no_grade": MessageLookupByLibrary.simpleMessage(
      "补缓考成绩请以教务服务为准",
    ),
    "fatal_error": MessageLookupByLibrary.simpleMessage("错误"),
    "favorites": MessageLookupByLibrary.simpleMessage("收藏"),
    "fenglin_campus": MessageLookupByLibrary.simpleMessage("枫林校区"),
    "filtering_by_tag": m9,
    "fold": MessageLookupByLibrary.simpleMessage("折叠"),
    "fold_floor": MessageLookupByLibrary.simpleMessage("折叠本层"),
    "folded": MessageLookupByLibrary.simpleMessage("该内容已折叠，点击查看"),
    "follow_system_palette": MessageLookupByLibrary.simpleMessage("跟随系统色彩"),
    "follow_system_palette_description": MessageLookupByLibrary.simpleMessage(
      "使用基于壁纸的Android Material You动态颜色",
    ),
    "forgot_password": MessageLookupByLibrary.simpleMessage("忘记密码"),
    "format_exception": MessageLookupByLibrary.simpleMessage("解析错误"),
    "formula": MessageLookupByLibrary.simpleMessage("[公式]"),
    "forum": MessageLookupByLibrary.simpleMessage("茶楼"),
    "forum_clean_mode": MessageLookupByLibrary.simpleMessage("清净模式"),
    "forum_clean_mode_description": MessageLookupByLibrary.simpleMessage(
      "过滤茶楼中不友善的 Emoji",
    ),
    "forum_clean_mode_detail": MessageLookupByLibrary.simpleMessage(
      "开启清净模式后，茶楼中部分被广泛认为「不友善」的 Emoji 表情将会被过滤。",
    ),
    "forum_hidden_tags": MessageLookupByLibrary.simpleMessage("屏蔽标签"),
    "forum_hidden_tags_description": MessageLookupByLibrary.simpleMessage(
      "隐藏茶楼中带有某些标签的帖子",
    ),
    "forum_hidden_tags_title": MessageLookupByLibrary.simpleMessage("屏蔽标签"),
    "forum_message": MessageLookupByLibrary.simpleMessage("站内信"),
    "forum_nsfw_behavior": MessageLookupByLibrary.simpleMessage(
      "具有谨慎阅读（带星号）标签的内容",
    ),
    "forum_post_enter_content": MessageLookupByLibrary.simpleMessage("发布"),
    "forum_show_banner": MessageLookupByLibrary.simpleMessage("显示一些活动"),
    "forum_show_banner_description": MessageLookupByLibrary.simpleMessage(
      "[实验性] 将在茶楼页面顶部显示一些不干扰浏览的校园活动公告",
    ),
    "forum_user_id": m10,
    "free_select": MessageLookupByLibrary.simpleMessage("选择复制"),
    "fsy2001_description": MessageLookupByLibrary.simpleMessage("旦挞开发者"),
    "fudan_aao_notices": MessageLookupByLibrary.simpleMessage("教务处通知"),
    "fudan_api_exception": MessageLookupByLibrary.simpleMessage("校园网接口无法解析"),
    "fudan_library_crowdedness": MessageLookupByLibrary.simpleMessage("图书馆人数"),
    "fudan_postgraduate_student": MessageLookupByLibrary.simpleMessage(
      "复旦研究生 UIS 登录",
    ),
    "fudan_qr_code": MessageLookupByLibrary.simpleMessage("复旦生活码"),
    "fudan_staff": MessageLookupByLibrary.simpleMessage("复旦教职工登录"),
    "fudan_uis_email_login": MessageLookupByLibrary.simpleMessage("UIS 邮箱登录"),
    "get_started": MessageLookupByLibrary.simpleMessage("开始使用"),
    "good_afternoon": MessageLookupByLibrary.simpleMessage("下午的悠闲时光~"),
    "good_morning": MessageLookupByLibrary.simpleMessage("一日之计在于晨"),
    "good_night": MessageLookupByLibrary.simpleMessage("晚上好~"),
    "good_noon": MessageLookupByLibrary.simpleMessage("快到中午啦"),
    "gpa": MessageLookupByLibrary.simpleMessage("绩点"),
    "handan_campus": MessageLookupByLibrary.simpleMessage("邯郸校区"),
    "haptic_feedback": MessageLookupByLibrary.simpleMessage("触觉反馈"),
    "haptic_feedback_description": MessageLookupByLibrary.simpleMessage(
      "在操作时提供震动反馈",
    ),
    "has_stop_words": m11,
    "has_stop_words_title": MessageLookupByLibrary.simpleMessage("含有不适当的词语"),
    "hasbai_description": MessageLookupByLibrary.simpleMessage("茶楼创建者 & 开发者"),
    "hide": MessageLookupByLibrary.simpleMessage("隐藏"),
    "hide_hole": MessageLookupByLibrary.simpleMessage("隐藏此帖子"),
    "hide_hole_confirm": MessageLookupByLibrary.simpleMessage(
      "确定要永久隐藏此帖子吗？隐藏后，除非重新安装应用，否则将无法在帖子列表中再看到此帖子。",
    ),
    "hide_hole_success": MessageLookupByLibrary.simpleMessage(
      "帖子已隐藏，下次刷新列表后生效。",
    ),
    "hide_notification_description": MessageLookupByLibrary.simpleMessage(
      "你想要永久隐藏这条通知吗？你可以在设置中显示所有已隐藏的通知。",
    ),
    "hide_post_confirm": MessageLookupByLibrary.simpleMessage(
      "是否隐藏该条目？隐藏后仍可通过右上角恢复按钮恢复。",
    ),
    "hide_post_success": MessageLookupByLibrary.simpleMessage("已成功隐藏该条目"),
    "high_contrast_color_description": MessageLookupByLibrary.simpleMessage(
      "空教室查询和茶楼标签",
    ),
    "history": MessageLookupByLibrary.simpleMessage("历史记录"),
    "hole_force_deleted": MessageLookupByLibrary.simpleMessage("已删除"),
    "hole_frozen": MessageLookupByLibrary.simpleMessage("已冻结"),
    "hole_hidden": MessageLookupByLibrary.simpleMessage("已隐藏"),
    "hole_locked": MessageLookupByLibrary.simpleMessage("已锁定"),
    "holiday": MessageLookupByLibrary.simpleMessage("休息日"),
    "hour_ago": m12,
    "hydrogenc_description": MessageLookupByLibrary.simpleMessage("旦挞开发者"),
    "i_have_read_and_agreed": m13,
    "i_see": MessageLookupByLibrary.simpleMessage("好"),
    "identity_service": MessageLookupByLibrary.simpleMessage("统一身份认证服务"),
    "image": MessageLookupByLibrary.simpleMessage("图片"),
    "image_save_failed": MessageLookupByLibrary.simpleMessage(
      "图片保存失败，请检查您的权限设置",
    ),
    "image_save_success": MessageLookupByLibrary.simpleMessage("图片已保存到相册"),
    "image_tag": MessageLookupByLibrary.simpleMessage("[图片]"),
    "input_reason": MessageLookupByLibrary.simpleMessage("输入内容（留空以还原）"),
    "input_your_email": MessageLookupByLibrary.simpleMessage("输入您的邮箱"),
    "input_your_email_password": MessageLookupByLibrary.simpleMessage(
      "输入您的旦挞账号/密码",
    ),
    "input_your_email_secure_code": MessageLookupByLibrary.simpleMessage(
      "请输入您的邮箱验证码",
    ),
    "invalidUri": MessageLookupByLibrary.simpleMessage("无效的 URI"),
    "invalid_course_info": MessageLookupByLibrary.simpleMessage("请提供完整的课程时间信息"),
    "ivanfei_description": MessageLookupByLibrary.simpleMessage("茶楼前端"),
    "japanese_language": MessageLookupByLibrary.simpleMessage("日语"),
    "jiangwan_campus": MessageLookupByLibrary.simpleMessage("江湾校区"),
    "jingyijun_description": MessageLookupByLibrary.simpleMessage("茶楼后端"),
    "jump_to_hole": MessageLookupByLibrary.simpleMessage("定位"),
    "koowz_description": MessageLookupByLibrary.simpleMessage("旦挞开发者"),
    "lan_connection_issue_1": MessageLookupByLibrary.simpleMessage("未能连接到校园内网"),
    "lan_connection_issue_1_action": MessageLookupByLibrary.simpleMessage(
      "校园 VPN",
    ),
    "lan_connection_issue_1_description": MessageLookupByLibrary.simpleMessage(
      "无法连接到复旦内部网络，部分功能可能不可用。然而，如果你开启了“自动使用 WebVPN 代理”，并且登录了 UIS 账号，你仍然可以直接使用这些功能。\n\n如果不起作用，请尝试使用校园 VPN (EasyConnect) 或链接 Eduroam 热点以访问内网资源。",
    ),
    "lan_connection_issue_1_guide_content": MessageLookupByLibrary.simpleMessage(
      "三步走即可：\n\n1. [点击这里](https://stuvpn.fudan.edu.cn/com/installClient.html#auto-common)去 VPN 下载界面，选择对应平台安装。\n2. 打开安装的软件，在地址栏输入 stuvpn.fudan.edu.cn ，点击确定。\n3. 弹出登录界面，输入自己的 UIS 账号，点击连接。\n\n然后就可以正常使用旦挞各项功能了！",
    ),
    "lan_connection_issue_1_guide_title": MessageLookupByLibrary.simpleMessage(
      "如何使用校园 VPN？",
    ),
    "last_15_days": MessageLookupByLibrary.simpleMessage("过去 15 天"),
    "last_30_days": MessageLookupByLibrary.simpleMessage("过去 30 天"),
    "last_7_days": MessageLookupByLibrary.simpleMessage("过去 7 天"),
    "last_created": MessageLookupByLibrary.simpleMessage("最近创建"),
    "last_replied": MessageLookupByLibrary.simpleMessage("最近回复"),
    "last_updated": m14,
    "late_night": MessageLookupByLibrary.simpleMessage("披星戴月，不负韶华"),
    "latest_announcement": MessageLookupByLibrary.simpleMessage("最新公告"),
    "latest_reply": m15,
    "latex_description": MessageLookupByLibrary.simpleMessage(
      "LaTeX 解析器已启用。您可以直接使用 LaTeX 语法在美元符号「\$」之间撰写数学公式。如果您不知道什么是 LaTeX，可以参阅 https://liam.page/2014/09/08/latex-introduction/ 。",
    ),
    "latex_enabled": MessageLookupByLibrary.simpleMessage("LaTeX 已启用"),
    "level": m16,
    "like": m17,
    "liked": m18,
    "limited_mode_description": MessageLookupByLibrary.simpleMessage(
      "无法连接至复旦内网，正在使用备用数据源，不可分学期查看考试数据且无法查看绩点。",
    ),
    "limited_mode_title": MessageLookupByLibrary.simpleMessage("访问受限"),
    "link": MessageLookupByLibrary.simpleMessage("链接"),
    "list_my_posts": MessageLookupByLibrary.simpleMessage("查看我的帖子"),
    "list_my_punishments": MessageLookupByLibrary.simpleMessage("查看处罚历史"),
    "list_my_replies": MessageLookupByLibrary.simpleMessage("查看我的回复"),
    "list_view_history": MessageLookupByLibrary.simpleMessage("查看浏览记录（本地）"),
    "loading": MessageLookupByLibrary.simpleMessage("加载中..."),
    "loading_qr_code": MessageLookupByLibrary.simpleMessage(
      "正在加载复活码...\n可能需要 5~15 秒，这取决于复旦服务器。",
    ),
    "logged_in": MessageLookupByLibrary.simpleMessage("已登录"),
    "login": MessageLookupByLibrary.simpleMessage("登录"),
    "login_agreement": MessageLookupByLibrary.simpleMessage("登录即代表您同意"),
    "login_by_email_password": MessageLookupByLibrary.simpleMessage("使用旦挞账号登录"),
    "login_danta_account": MessageLookupByLibrary.simpleMessage("旦挞帐号登录"),
    "login_danta_community": MessageLookupByLibrary.simpleMessage("旦挞社区与服务"),
    "login_from_forum_page": MessageLookupByLibrary.simpleMessage("请从茶楼页面登录"),
    "login_issue_1": MessageLookupByLibrary.simpleMessage(
      "登录失败，旦挞校园助手无法完成 UIS 登录。\n出现此错误，很可能是由于您连续多次登录失败，出现了登录验证码所致。\n您需要使用浏览器手动完成一次登录，重新打开旦挞校园助手，即可妥善处理此情况。\n\n如果问题依然存在，请尝试重新登录。",
    ),
    "login_issue_1_action": MessageLookupByLibrary.simpleMessage("打开 UIS 登录页面"),
    "login_issue_2": MessageLookupByLibrary.simpleMessage(
      "未能正确从服务器获取本学期相关信息，请重试。\n如果直接跳过，课程表相关功能可能出现日期计算上的问题。",
    ),
    "login_postgraduate": MessageLookupByLibrary.simpleMessage("研究生登录"),
    "login_problem": m19,
    "login_uis": MessageLookupByLibrary.simpleMessage("复旦 UIS 登录"),
    "login_uis_description": MessageLookupByLibrary.simpleMessage(
      "您的密码仅会被用于登录复旦 UIS（统一身份认证）",
    ),
    "login_uis_dialog_title": MessageLookupByLibrary.simpleMessage(
      "复旦本科生 UIS 登录",
    ),
    "login_uis_pwd": MessageLookupByLibrary.simpleMessage("密码"),
    "login_uis_uid": MessageLookupByLibrary.simpleMessage("学号"),
    "login_undergraduate": MessageLookupByLibrary.simpleMessage("本科生登录"),
    "logining": MessageLookupByLibrary.simpleMessage("正在登录..."),
    "logout": MessageLookupByLibrary.simpleMessage("退出登录"),
    "logout_forum": MessageLookupByLibrary.simpleMessage("您将要登出茶楼"),
    "logout_question_prompt": MessageLookupByLibrary.simpleMessage(
      "所有存储在本地的数据将被删除。",
    ),
    "logout_question_prompt_title": MessageLookupByLibrary.simpleMessage(
      "确定要退出登录吗？",
    ),
    "major": MessageLookupByLibrary.simpleMessage("专业"),
    "manually_add_course": MessageLookupByLibrary.simpleMessage("手动添加课程："),
    "manually_add_course_message": MessageLookupByLibrary.simpleMessage(
      "是否有课未收录在课表上，但你又想查看的呢？手动添加它吧。",
    ),
    "mark_as_dealt": MessageLookupByLibrary.simpleMessage("标记为已处理"),
    "markdown_description": MessageLookupByLibrary.simpleMessage(
      "Markdown 解析器已启用。您可以直接使用 Markdown 语法撰写帖子。如果您不知道什么是 Markdown，可以参阅 https://www.runoob.com/markdown/md-tutorial.html 。",
    ),
    "markdown_enabled": MessageLookupByLibrary.simpleMessage("Markdown 已启用"),
    "messages": MessageLookupByLibrary.simpleMessage("消息"),
    "minute_ago": m20,
    "modified": MessageLookupByLibrary.simpleMessage("已修改"),
    "modify": MessageLookupByLibrary.simpleMessage("修改"),
    "modify_floor": MessageLookupByLibrary.simpleMessage("修改本层"),
    "modify_password": MessageLookupByLibrary.simpleMessage("修改密码"),
    "modify_tag_division": MessageLookupByLibrary.simpleMessage("修改标签和分区"),
    "modify_to": m21,
    "modify_to_floor": m22,
    "moment_ago": MessageLookupByLibrary.simpleMessage("刚刚"),
    "morning": MessageLookupByLibrary.simpleMessage("上午"),
    "most_least_crowded_canteen": m23,
    "multiple_select_mode_enter": MessageLookupByLibrary.simpleMessage(
      "进入多选模式",
    ),
    "multiple_select_mode_exit": MessageLookupByLibrary.simpleMessage("退出多选模式"),
    "my_email_not_in_list": MessageLookupByLibrary.simpleMessage("我的学校邮箱不在列表中"),
    "name": MessageLookupByLibrary.simpleMessage("名称"),
    "new_post": MessageLookupByLibrary.simpleMessage("发布新帖子"),
    "new_shortcut_card": MessageLookupByLibrary.simpleMessage("添加快捷卡片"),
    "new_shortcut_description": MessageLookupByLibrary.simpleMessage(
      "点击该卡片可以打开指定网页",
    ),
    "new_update_description": m24,
    "new_update_title": MessageLookupByLibrary.simpleMessage("发现新版本"),
    "next": MessageLookupByLibrary.simpleMessage("下一步"),
    "next_course_is": m25,
    "next_course_none": MessageLookupByLibrary.simpleMessage("今日的课程已全部结束"),
    "next_course_setup": MessageLookupByLibrary.simpleMessage(
      "请先到课表页面完成相关设置，然后刷新",
    ),
    "next_question": MessageLookupByLibrary.simpleMessage("下一题"),
    "no_course_review": MessageLookupByLibrary.simpleMessage("该课程还没有评论"),
    "no_data": MessageLookupByLibrary.simpleMessage("数据为空"),
    "no_data_error": MessageLookupByLibrary.simpleMessage("数据为空"),
    "no_favorites": MessageLookupByLibrary.simpleMessage("收藏列表为空"),
    "no_matching_bus": MessageLookupByLibrary.simpleMessage("您所在的校区没有可乘坐的校车"),
    "no_subscriptions": MessageLookupByLibrary.simpleMessage("订阅列表为空"),
    "not_fudan_student": MessageLookupByLibrary.simpleMessage("非复旦学生暂不支持课表功能。"),
    "not_logged_in": MessageLookupByLibrary.simpleMessage("未登录"),
    "notification_mention": MessageLookupByLibrary.simpleMessage("您的帖子被引用"),
    "notification_mention_s": MessageLookupByLibrary.simpleMessage("引用"),
    "notification_reported": MessageLookupByLibrary.simpleMessage(
      "您的帖子因举报而被处理",
    ),
    "notification_reported_s": MessageLookupByLibrary.simpleMessage("举报"),
    "notification_settings": MessageLookupByLibrary.simpleMessage("推送通知"),
    "notification_subscription": MessageLookupByLibrary.simpleMessage(
      "您订阅的帖子有新回复",
    ),
    "notification_subscription_s": MessageLookupByLibrary.simpleMessage("订阅"),
    "obtaining_information": MessageLookupByLibrary.simpleMessage("正在获取信息……"),
    "ok": MessageLookupByLibrary.simpleMessage("好"),
    "older_announcement": MessageLookupByLibrary.simpleMessage("往期公告"),
    "only_show_dz": MessageLookupByLibrary.simpleMessage("只看楼主"),
    "open_source_software_licenses": MessageLookupByLibrary.simpleMessage(
      "开源软件许可协议",
    ),
    "operation_failed": MessageLookupByLibrary.simpleMessage("操作失败"),
    "operation_successful": MessageLookupByLibrary.simpleMessage("操作成功"),
    "other_types_exam": MessageLookupByLibrary.simpleMessage("论文和其他考试"),
    "our_email_is": m26,
    "out_of_dining_time": MessageLookupByLibrary.simpleMessage("现在不是用餐时间"),
    "password": MessageLookupByLibrary.simpleMessage("密码"),
    "pe_exercises": MessageLookupByLibrary.simpleMessage("体育锻炼"),
    "percentile": MessageLookupByLibrary.simpleMessage("百分位"),
    "pin_unpin_hole": MessageLookupByLibrary.simpleMessage("置顶/取消置顶此帖子"),
    "pinned": MessageLookupByLibrary.simpleMessage("置顶"),
    "post_does_not_exist": MessageLookupByLibrary.simpleMessage("没有这条帖子"),
    "post_has_no_tags": MessageLookupByLibrary.simpleMessage(
      "我们不建议发布无标签的帖子，一定要继续发送吗？",
    ),
    "post_has_no_tags_title": MessageLookupByLibrary.simpleMessage("没有标签"),
    "post_time": m27,
    "postgraduates_need_login": MessageLookupByLibrary.simpleMessage(
      "点击此处以登录课表系统。",
    ),
    "posting": MessageLookupByLibrary.simpleMessage("正在发布内容..."),
    "prev_question": MessageLookupByLibrary.simpleMessage("上一题"),
    "preview": MessageLookupByLibrary.simpleMessage("预览"),
    "privacy_policy": MessageLookupByLibrary.simpleMessage("隐私政策和使用条款"),
    "project_page": MessageLookupByLibrary.simpleMessage("项目网页"),
    "proxy_setting": MessageLookupByLibrary.simpleMessage("代理设置"),
    "proxy_setting_add_new": MessageLookupByLibrary.simpleMessage("添加新代理"),
    "proxy_setting_already_exists": MessageLookupByLibrary.simpleMessage(
      "该代理已存在",
    ),
    "proxy_setting_do_not_use": MessageLookupByLibrary.simpleMessage("不使用代理"),
    "proxy_setting_input_hint": MessageLookupByLibrary.simpleMessage(
      "如 127.0.0.1:1234（留空以关闭代理）",
    ),
    "proxy_setting_input_title": MessageLookupByLibrary.simpleMessage(
      "输入 HTTP 代理地址",
    ),
    "proxy_setting_remove": MessageLookupByLibrary.simpleMessage("移除代理"),
    "proxy_setting_unset": MessageLookupByLibrary.simpleMessage("未设置"),
    "push_notification_reg_failed": MessageLookupByLibrary.simpleMessage(
      "推送通知注册失败",
    ),
    "push_notification_reg_failed_des": m28,
    "qr_code_terms_not_agreed": MessageLookupByLibrary.simpleMessage("需要接受条款"),
    "quiz_completed": MessageLookupByLibrary.simpleMessage(
      "您已完成社区公约的学习，请在使用茶楼期间牢记并遵守",
    ),
    "quiz_has_errors": m29,
    "quiz_not_answered": MessageLookupByLibrary.simpleMessage(
      "您还未查看过社区公约，请点击下方链接阅读后答题，全部正确后方可进入茶楼",
    ),
    "quote": MessageLookupByLibrary.simpleMessage("引用"),
    "rank": MessageLookupByLibrary.simpleMessage("排名"),
    "rate": MessageLookupByLibrary.simpleMessage("给我们评分"),
    "re_login": MessageLookupByLibrary.simpleMessage("重新登录"),
    "read_announcements": MessageLookupByLibrary.simpleMessage("查看开发组公告"),
    "reason_report_post": m30,
    "recommended_tags": MessageLookupByLibrary.simpleMessage("推荐标签"),
    "recommended_tags_availibity": MessageLookupByLibrary.simpleMessage(
      "[实验性] 根据你的帖子内容推荐一些标签",
    ),
    "recommended_tags_description": MessageLookupByLibrary.simpleMessage(
      "警告：这是一个实验性功能。推荐的内容可能不正确或者不恰当，仅供参考。如果您发现推荐的内容不恰当，请报告至 dev@danta.tech 。\n\n所有数据均在本地处理，不会上传至服务器。\n\n模型版本：0.1a (CoreML)\n\n系统要求：iOS 14.0及以上",
    ),
    "redo_incorrect_questions": MessageLookupByLibrary.simpleMessage("重做错题"),
    "refresh": MessageLookupByLibrary.simpleMessage("刷新"),
    "registration_succeed": MessageLookupByLibrary.simpleMessage("注册成功"),
    "remove_favorite_hole_confirmation": MessageLookupByLibrary.simpleMessage(
      "你确定要删除该条收藏吗？",
    ),
    "remove_subscribed_hole_confirmation": MessageLookupByLibrary.simpleMessage(
      "你确定要删除该条订阅吗？",
    ),
    "reply_failed": MessageLookupByLibrary.simpleMessage("回复失败"),
    "reply_to": m31,
    "reply_to_floor": m32,
    "report": MessageLookupByLibrary.simpleMessage("举报"),
    "report_failed": MessageLookupByLibrary.simpleMessage("举报失败"),
    "report_success": MessageLookupByLibrary.simpleMessage(
      "举报成功，感谢您为维护良好社区环境所作出的贡献。",
    ),
    "reports": MessageLookupByLibrary.simpleMessage("举报"),
    "request_success": MessageLookupByLibrary.simpleMessage("请求成功。"),
    "require_login": MessageLookupByLibrary.simpleMessage("您需要先登录后再使用本功能。"),
    "reset": MessageLookupByLibrary.simpleMessage("重置"),
    "reset_layout": MessageLookupByLibrary.simpleMessage("重置布局"),
    "response_error": MessageLookupByLibrary.simpleMessage("服务器返回错误码："),
    "restore_hidden_confirm": MessageLookupByLibrary.simpleMessage(
      "是否复原所有隐藏条目？",
    ),
    "retry": MessageLookupByLibrary.simpleMessage("重试"),
    "save_your_information": MessageLookupByLibrary.simpleMessage("请妥善保存以下信息"),
    "school_bus": MessageLookupByLibrary.simpleMessage("校车时刻"),
    "school_bus_not_showing_all": m33,
    "school_bus_showing_all": MessageLookupByLibrary.simpleMessage("已显示全部校车班次"),
    "school_bus_tap_to_not_show_all": m34,
    "school_bus_tap_to_show_all": MessageLookupByLibrary.simpleMessage(
      "点击以显示全部",
    ),
    "screenshot_warning": MessageLookupByLibrary.simpleMessage(
      "为保障茶楼信息安全和其他用户的隐私，请不要将截图发送到任何平台，感谢您的配合。",
    ),
    "screenshot_warning_title": MessageLookupByLibrary.simpleMessage("检测到截图"),
    "scroll_to_end": MessageLookupByLibrary.simpleMessage("去往底部"),
    "search": MessageLookupByLibrary.simpleMessage("搜索"),
    "search_by_floor_tip": m35,
    "search_by_pid_tip": m36,
    "search_by_tag_tip": m37,
    "search_by_text_accurate_tip": m38,
    "search_by_text_tip": m39,
    "search_hint": MessageLookupByLibrary.simpleMessage("搜索 或 #PID"),
    "search_result": MessageLookupByLibrary.simpleMessage("搜索结果"),
    "season_autumn": MessageLookupByLibrary.simpleMessage("秋"),
    "season_spring": MessageLookupByLibrary.simpleMessage("春"),
    "season_summer": MessageLookupByLibrary.simpleMessage("夏"),
    "season_winter": MessageLookupByLibrary.simpleMessage("冬"),
    "seats": m40,
    "second_ago": m41,
    "secure_code": MessageLookupByLibrary.simpleMessage("验证码"),
    "secure_verification": MessageLookupByLibrary.simpleMessage("安全验证"),
    "secure_verification_description": MessageLookupByLibrary.simpleMessage(
      "我们刚刚向您发送了一封含有一次性验证码的邮件，请输入您得到的验证码。",
    ),
    "select_all": MessageLookupByLibrary.simpleMessage("全选"),
    "select_date_range_far_past": MessageLookupByLibrary.simpleMessage("遥远的过去"),
    "select_date_range_from": MessageLookupByLibrary.simpleMessage("从"),
    "select_date_range_invalid_range": MessageLookupByLibrary.simpleMessage(
      "开始日期必须早于结束日期",
    ),
    "select_date_range_now": MessageLookupByLibrary.simpleMessage("现在"),
    "select_date_range_to": MessageLookupByLibrary.simpleMessage("到"),
    "select_semester": MessageLookupByLibrary.simpleMessage("选择课表学期"),
    "select_tags": MessageLookupByLibrary.simpleMessage("选择标签"),
    "semester": m42,
    "semester_start_at_monday": MessageLookupByLibrary.simpleMessage(
      "学期开始日期通常是指第一周的星期一，但你选择的日期似乎不是周一。你确定要设置为该日期吗？",
    ),
    "semester_start_date": MessageLookupByLibrary.simpleMessage("设置学期开始日期："),
    "send_email": MessageLookupByLibrary.simpleMessage("发送邮件"),
    "set_password": MessageLookupByLibrary.simpleMessage("设置密码"),
    "set_your_danxi_password": MessageLookupByLibrary.simpleMessage(
      "为旦挞账户设置一个密码",
    ),
    "settings": MessageLookupByLibrary.simpleMessage("设置"),
    "share": MessageLookupByLibrary.simpleMessage("分享"),
    "shareFloorSuccess": MessageLookupByLibrary.simpleMessage(
      "分享该楼层成功！请检查剪贴板。",
    ),
    "shareHoleSuccess": MessageLookupByLibrary.simpleMessage("分享该洞成功！请检查剪贴板。"),
    "share_as_ics": MessageLookupByLibrary.simpleMessage("导出为 ICS"),
    "share_floor": MessageLookupByLibrary.simpleMessage("以文本形式分享楼层"),
    "share_hole": MessageLookupByLibrary.simpleMessage("以文本形式分享帖子"),
    "share_hole_title": MessageLookupByLibrary.simpleMessage("选择要分享的楼层"),
    "show": MessageLookupByLibrary.simpleMessage("显示"),
    "show_all": MessageLookupByLibrary.simpleMessage("显示全部"),
    "show_all_replies": MessageLookupByLibrary.simpleMessage("查看全部"),
    "show_hidden_notifications": MessageLookupByLibrary.simpleMessage(
      "显示已隐藏的首页通知",
    ),
    "show_hidden_notifications_description":
        MessageLookupByLibrary.simpleMessage("点击以恢复所有已隐藏的首页通知卡片"),
    "show_this_person": MessageLookupByLibrary.simpleMessage("只看此人"),
    "show_unread": MessageLookupByLibrary.simpleMessage("显示未读"),
    "silence_detail": MessageLookupByLibrary.simpleMessage(
      "由于违反社区规定，您被禁止发言。\n\n如果您认为此决定有误，请联系 admin@danta.tech",
    ),
    "silence_notice": MessageLookupByLibrary.simpleMessage("没有发帖权限"),
    "simplified_chinese_language": MessageLookupByLibrary.simpleMessage("简体中文"),
    "singularity_s0_description": MessageLookupByLibrary.simpleMessage(
      "旦挞开发者 & 茶楼后端",
    ),
    "sjtu_student": MessageLookupByLibrary.simpleMessage("上海交通大学校外登录"),
    "skip": MessageLookupByLibrary.simpleMessage("跳过"),
    "sort_order": MessageLookupByLibrary.simpleMessage("排序方式"),
    "start_date_select": MessageLookupByLibrary.simpleMessage("学期开始日期查询："),
    "start_date_select_message": MessageLookupByLibrary.simpleMessage(
      "必须先正确选择学期的开始日期，否则导致日期错误。\n提示：开始日期是第一周的周一。",
    ),
    "start_quiz": MessageLookupByLibrary.simpleMessage("进入答题"),
    "sticker": MessageLookupByLibrary.simpleMessage("表情"),
    "sticker_tag": MessageLookupByLibrary.simpleMessage("[表情]"),
    "submit": MessageLookupByLibrary.simpleMessage("发送"),
    "subscriptions": MessageLookupByLibrary.simpleMessage("订阅"),
    "tag_least_crowded": MessageLookupByLibrary.simpleMessage("最空闲"),
    "tag_most_crowded": MessageLookupByLibrary.simpleMessage("最拥挤"),
    "tap_to_show_preview": MessageLookupByLibrary.simpleMessage("点击以显示预览"),
    "tap_to_view": MessageLookupByLibrary.simpleMessage("点击以查看"),
    "terms_and_conditions_content": MessageLookupByLibrary.simpleMessage(
      "登录即表示您已阅读并同意",
    ),
    "terms_and_conditions_content_end": MessageLookupByLibrary.simpleMessage(
      "。",
    ),
    "terms_and_conditions_title": MessageLookupByLibrary.simpleMessage("法律"),
    "terms_and_privacy": MessageLookupByLibrary.simpleMessage("服务条款和隐私政策"),
    "theme": MessageLookupByLibrary.simpleMessage("主题"),
    "theme_color": MessageLookupByLibrary.simpleMessage("主题色"),
    "theme_color_description": MessageLookupByLibrary.simpleMessage(
      "切换旦挞的主题配色",
    ),
    "theme_color_description_detail": MessageLookupByLibrary.simpleMessage(
      "选择预设颜色或自定义颜色以切换旦挞主题配色",
    ),
    "theme_type": MessageLookupByLibrary.simpleMessage("主题"),
    "theme_type_dark": MessageLookupByLibrary.simpleMessage("深色"),
    "theme_type_light": MessageLookupByLibrary.simpleMessage("浅色"),
    "theme_type_system": MessageLookupByLibrary.simpleMessage("跟随系统"),
    "timetable": MessageLookupByLibrary.simpleMessage("日程"),
    "timetable_last_updated": MessageLookupByLibrary.simpleMessage("最后刷新时间："),
    "timetable_no_last_updated": MessageLookupByLibrary.simpleMessage("暂无"),
    "tip_that_danxi_is_not_fdu": MessageLookupByLibrary.simpleMessage(
      "注意：旦挞账号和复旦大学无关，请不要在这里尝试您的复旦邮箱密码（或「统一身份认证」密码）。",
    ),
    "today_course": MessageLookupByLibrary.simpleMessage("今日课程"),
    "traditional_chinese_language": MessageLookupByLibrary.simpleMessage(
      "繁体中文",
    ),
    "unable_to_access_url": MessageLookupByLibrary.simpleMessage(
      "测试连接失败\n无法访问此网页，请检查 URL",
    ),
    "unable_to_find_quote": MessageLookupByLibrary.simpleMessage("无法找到被引用的帖子"),
    "unauthorized": MessageLookupByLibrary.simpleMessage("未授权"),
    "unavailable": MessageLookupByLibrary.simpleMessage("不可用"),
    "under_maintenance": MessageLookupByLibrary.simpleMessage(
      "无法连接到复旦内部网络。\n你可以使用校园 VPN (Easy Connect) 在校外访问校园网。",
    ),
    "unknown_error": MessageLookupByLibrary.simpleMessage("未知错误"),
    "unknown_start_date": m43,
    "unmovable_widget": MessageLookupByLibrary.simpleMessage("该项目不可移动"),
    "unsupported": MessageLookupByLibrary.simpleMessage("此设备暂不支持"),
    "update_now": MessageLookupByLibrary.simpleMessage("更新"),
    "uploading_image": MessageLookupByLibrary.simpleMessage("正在上传图片..."),
    "uploading_image_failed": MessageLookupByLibrary.simpleMessage("上传图片失败"),
    "use_webvpn_description": MessageLookupByLibrary.simpleMessage(
      "启动该项后，允许在非校园网环境下直接访问茶楼、评教等功能（需要重启应用）",
    ),
    "use_webvpn_title": MessageLookupByLibrary.simpleMessage("自动使用 WebVPN 代理"),
    "version": MessageLookupByLibrary.simpleMessage("版本"),
    "view_count": m44,
    "view_history": MessageLookupByLibrary.simpleMessage("查看修改历史"),
    "view_ossl": MessageLookupByLibrary.simpleMessage("本应用的诞生离不开许多开源软件。查看"),
    "w568w_description": MessageLookupByLibrary.simpleMessage("旦挞创建者 & 开发者"),
    "warning": MessageLookupByLibrary.simpleMessage("警告"),
    "weak_password": MessageLookupByLibrary.simpleMessage(
      "登录失败，未知错误\n请注意：如果在登录 UIS 时总是提示密码较弱，请尝试修改密码后重试。",
    ),
    "week": m45,
    "weekday": MessageLookupByLibrary.simpleMessage("工作日"),
    "welcome": m46,
    "welcome_1": MessageLookupByLibrary.simpleMessage("时刻保持最新"),
    "welcome_1s": MessageLookupByLibrary.simpleMessage("在您关注的帖子更新时，您将收到推送通知"),
    "welcome_2": MessageLookupByLibrary.simpleMessage("分区讨论"),
    "welcome_2s": MessageLookupByLibrary.simpleMessage("在专门的空间进行更专注的讨论"),
    "welcome_3": MessageLookupByLibrary.simpleMessage("轻松编辑"),
    "welcome_3s": MessageLookupByLibrary.simpleMessage(
      "在帖子中使用 LaTeX 和 Markdown 语法",
    ),
    "welcome_back": MessageLookupByLibrary.simpleMessage("欢迎回来"),
    "welcome_feature": MessageLookupByLibrary.simpleMessage("欢迎"),
    "welcome_prompt": MessageLookupByLibrary.simpleMessage(
      "欢迎来到旦挞校园助手！\n\n如果你是第一次使用旦挞校园助手，或许你想看看FAQ板块？",
    ),
    "welcome_to_forum": MessageLookupByLibrary.simpleMessage("欢迎注册茶楼"),
    "windows_auto_start_description": MessageLookupByLibrary.simpleMessage(
      "在开机启动时自动打开旦挞校园助手",
    ),
    "windows_auto_start_title": MessageLookupByLibrary.simpleMessage("自动启动"),
    "windows_auto_start_wait_dialog_message":
        MessageLookupByLibrary.simpleMessage(
          "您刚才应当已经看到了 Windows 弹出的 UAC 权限管理窗口。\n请在允许后，单击下方\"好\"以完成设置。",
        ),
    "windows_auto_start_wait_dialog_title":
        MessageLookupByLibrary.simpleMessage("等待弹出授权窗口"),
    "your_gpa": MessageLookupByLibrary.simpleMessage("你的绩点"),
    "your_gpa_subtitle": m47,
    "zhangjiang_campus": MessageLookupByLibrary.simpleMessage("张江校区"),
  };
}
