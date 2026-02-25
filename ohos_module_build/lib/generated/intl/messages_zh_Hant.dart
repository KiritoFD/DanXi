// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh_Hant locale. All the
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
  String get localeName => 'zh_Hant';

  static String m0(floor) => "您即將刪除貼子 #${floor}";

  static String m1(review) => "您即將刪除貼子 #${review}";

  static String m2(date) => "您在 ${date} 前無法在此分區發帖";

  static String m3(days) => "${days} 天";

  static String m4(num) => "${num} 天前";

  static String m5(date) => "開發組公告 ${date}";

  static String m6(available, used) => "剩餘：${available} kWh；已用：${used} kWh";

  static String m7(name) => "新增考試「${name}」時發生錯誤";

  static String m8(path) => "日誌檔案已匯出到暫存檔案：${path}，請自行處理該檔案。";

  static String m9(tag) => "依照「${tag}」篩選";

  static String m10(id) => "已登入 (ID：${id})";

  static String m11(stopWord) =>
      "內容中含有不適宜使用的詞語：${stopWord}。\n我們不建議發送此類詞語，因其不適用于理性討論的環境，而更可能引發攻擊或不當言論。一定要繼續發送嗎？";

  static String m12(num) => "${num}小時前";

  static String m13(name) => "我已閱讀並同意 ${name}";

  static String m14(date) => "最近更新：${date}";

  static String m15(username, date) => "${username} 于${date}回覆：";

  static String m16(level) => "等級 ${level}";

  static String m17(likes) => "按讚 (${likes})";

  static String m18(likes) => "已按讚 (${likes})";

  static String m19(QQ) =>
      "若您登入時遇到問題，請聯絡 dev@danta.tech 或加入 QQ 群 ${QQ}。\n\n同時，建議您閱讀開發組公告，您遇到的問題可能已在其中提及。";

  static String m20(num) => "${num}分鐘前";

  static String m21(name) => "正在修改 #${name}";

  static String m22(name) => "正在修改 ##${name}";

  static String m23(mostCrowded, leastCrowded) =>
      "[排隊最多]${mostCrowded}餐廳 [排隊最少]${leastCrowded}餐廳";

  static String m24(currentVersion, latestVersion) =>
      "當前版本：${currentVersion}\n最新版本：${latestVersion}\n\n更新日誌：";

  static String m25(courseName, courseLeft) =>
      "下一節課是${courseName}，今日還有${courseLeft}節課";

  static String m26(email) => "我們的電子郵件是 ${email}。";

  static String m27(time) => "發帖時間：${time}";

  static String m28(error) => "您可能暫時無法收到推送通知\n錯誤：${error}";

  static String m29(count) => "此次測驗中，有 ${count} 題未能正確回答，請點擊按鈕重做錯題";

  static String m30(id) => "請填寫舉報理由（#${id}）";

  static String m31(name) => "回覆 #${name}";

  static String m32(name) => "回覆 ##${name}";

  static String m33(hh, mm) => "僅顯示 ${hh}:${mm} 之後的校車班次";

  static String m34(hh, mm) => "點擊以篩選 ${hh}:${mm} 之後的校車班次";

  static String m35(floorId) => "跳轉至樓層「${floorId}」";

  static String m36(pid) => "跳轉至帖子「${pid}」";

  static String m37(tag) => "査看本分區含有 Tag「${tag}」的帖子";

  static String m38(searchKeyword) => "精確搜尋正文包含「${searchKeyword}」的帖子";

  static String m39(searchKeyword) => "搜尋正文包含「${searchKeyword}」的帖子";

  static String m40(seats) => "座位數：${seats}";

  static String m41(num) => "${num}秒前";

  static String m42(schoolYear, semName) => "${schoolYear}學年 ${semName}學期";

  static String m43(semesterName) =>
      "我們對該學期(${semesterName})的開學日期尚不瞭解，請手動設定開學日期";

  static String m44(view) => "瀏覽量：${view}";

  static String m45(week) => "第 ${week} 週";

  static String m46(name) => "歡迎你，${name}";

  static String m47(rank, credits) => "總學分數${credits}，績點排名第${rank}名，點擊査看詳情";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "Dest1n1_description": MessageLookupByLibrary.simpleMessage("茶樓前端"),
    "Frankstein73_description": MessageLookupByLibrary.simpleMessage("旦撻開發者"),
    "KYLN24_description": MessageLookupByLibrary.simpleMessage("茶樓前端"),
    "about": MessageLookupByLibrary.simpleMessage("關于本應用程式"),
    "about_to_delete_floor": m0,
    "about_to_delete_review": m1,
    "accessibility_coloring": MessageLookupByLibrary.simpleMessage(
      "輔助功能：高對比度顏色",
    ),
    "account": MessageLookupByLibrary.simpleMessage("帳戶"),
    "account_is_set": MessageLookupByLibrary.simpleMessage("帳戶已設定完成"),
    "acknowledgements": MessageLookupByLibrary.simpleMessage("致謝"),
    "acknowledgements_markdown": MessageLookupByLibrary.simpleMessage(
      "我們感謝 [IvanFei](https://github.com/ivanfei-1) 爲本 App 設計圖標，[MSapphire](https://www.xiaohongshu.com/user/profile/6575475f000000001902d794)、[Lin2510]()、[zzz111]() 爲本 App 貢獻表情包等藝術設計。",
    ),
    "add": MessageLookupByLibrary.simpleMessage("新增"),
    "add_class_time": MessageLookupByLibrary.simpleMessage("新增上課時間"),
    "add_courses": MessageLookupByLibrary.simpleMessage("手動新增課程"),
    "add_image": MessageLookupByLibrary.simpleMessage("新增圖片"),
    "add_new_card": MessageLookupByLibrary.simpleMessage("新建卡片"),
    "add_new_divider": MessageLookupByLibrary.simpleMessage("新建分隔線"),
    "add_new_tag": MessageLookupByLibrary.simpleMessage("新增標籤"),
    "add_special_tag": MessageLookupByLibrary.simpleMessage("新增特殊 Flag"),
    "admin_options": MessageLookupByLibrary.simpleMessage("管理操作"),
    "after_enabled": MessageLookupByLibrary.simpleMessage("開啓後"),
    "afternoon": MessageLookupByLibrary.simpleMessage("下午"),
    "agree_license_tip": MessageLookupByLibrary.simpleMessage("您需要閱讀並同意以下協議"),
    "all": MessageLookupByLibrary.simpleMessage("全部"),
    "all_tags": MessageLookupByLibrary.simpleMessage("所有標籤"),
    "already_set": MessageLookupByLibrary.simpleMessage("已設定"),
    "and_more": MessageLookupByLibrary.simpleMessage("… 等"),
    "app_description": MessageLookupByLibrary.simpleMessage(
      "由幾位復旦本科生用心打造的微型復旦綜合服務應用程式，希望能爲你的生活提供便利～",
    ),
    "app_description_title": MessageLookupByLibrary.simpleMessage("簡介"),
    "app_feedback": MessageLookupByLibrary.simpleMessage("【回饋】"),
    "app_name": MessageLookupByLibrary.simpleMessage("旦撻校園助手"),
    "are_you_sure": MessageLookupByLibrary.simpleMessage("確定刪除？"),
    "are_you_sure_pin_unpin": MessageLookupByLibrary.simpleMessage(
      "確定置頂／取消置頂？",
    ),
    "authors": MessageLookupByLibrary.simpleMessage("開發者"),
    "background_image": MessageLookupByLibrary.simpleMessage("背景圖片"),
    "background_image_already_set": MessageLookupByLibrary.simpleMessage(
      "背景圖片已設定，是否移除？",
    ),
    "background_image_description": MessageLookupByLibrary.simpleMessage(
      "選擇一張圖片作爲茶樓背景",
    ),
    "ban_post_until": m2,
    "ban_reporter": MessageLookupByLibrary.simpleMessage("封禁舉報人"),
    "ban_reporter_days": m3,
    "ban_reporter_reason_hint": MessageLookupByLibrary.simpleMessage(
      "封禁理由（可選）",
    ),
    "ban_reporter_tip": MessageLookupByLibrary.simpleMessage(
      "注意：此操作將封禁提交該舉報的用戶，而非被舉報的用戶。",
    ),
    "before_enabled": MessageLookupByLibrary.simpleMessage("開啓前"),
    "boreas618_description": MessageLookupByLibrary.simpleMessage("旦撻開發者"),
    "bus_dest": MessageLookupByLibrary.simpleMessage("終點站"),
    "bus_query": MessageLookupByLibrary.simpleMessage("校車班次"),
    "bus_start": MessageLookupByLibrary.simpleMessage("始發站"),
    "cache_cleared": MessageLookupByLibrary.simpleMessage("快取已清空"),
    "cancel": MessageLookupByLibrary.simpleMessage("取消"),
    "cannot_launch_url": MessageLookupByLibrary.simpleMessage("無法打開此連接"),
    "cant_login": MessageLookupByLibrary.simpleMessage("無法登入？"),
    "captcha_needed": MessageLookupByLibrary.simpleMessage(
      "需要輸入驗證碼，請遵循螢幕上的提示。",
    ),
    "choose_area": MessageLookupByLibrary.simpleMessage("選擇校區"),
    "choose_semester": MessageLookupByLibrary.simpleMessage("學期選擇："),
    "choose_semester_message": MessageLookupByLibrary.simpleMessage(
      "選擇你想査看的學期",
    ),
    "choose_your_email_below": MessageLookupByLibrary.simpleMessage(
      "從下方選項中選擇您的郵箱",
    ),
    "classroom": MessageLookupByLibrary.simpleMessage("教室"),
    "clear": MessageLookupByLibrary.simpleMessage("清除"),
    "clear_cache": MessageLookupByLibrary.simpleMessage("清空圖片快取"),
    "clear_cache_description": MessageLookupByLibrary.simpleMessage(
      "下次査看時，圖片將重新載入",
    ),
    "clear_history_confirm": MessageLookupByLibrary.simpleMessage(
      "是否清除本機瀏覽記錄？清除後無法恢復。",
    ),
    "community_convention": MessageLookupByLibrary.simpleMessage("社群公約"),
    "confirm": MessageLookupByLibrary.simpleMessage("確定"),
    "confirm_delete_image": MessageLookupByLibrary.simpleMessage(
      "確認從編輯器中刪除該圖片？注意：若有多個相同的圖片，將全部刪除。",
    ),
    "connection_cancelled": MessageLookupByLibrary.simpleMessage("連線被異常斷開"),
    "connection_timeout": MessageLookupByLibrary.simpleMessage("網路連線超時"),
    "contact_us": MessageLookupByLibrary.simpleMessage("聯絡我們"),
    "continue_sending": MessageLookupByLibrary.simpleMessage("繼續發送"),
    "copy": MessageLookupByLibrary.simpleMessage("全部複製"),
    "copy_floor_id": MessageLookupByLibrary.simpleMessage("複製樓層號"),
    "copy_floor_id_success": MessageLookupByLibrary.simpleMessage(
      "樓層號已儲存至剪貼簿。",
    ),
    "copy_hole_id": MessageLookupByLibrary.simpleMessage("複製洞號"),
    "copy_hole_id_success": MessageLookupByLibrary.simpleMessage("洞號已儲存至剪貼簿。"),
    "copy_password": MessageLookupByLibrary.simpleMessage("複製密碼"),
    "copy_qq_group_id": MessageLookupByLibrary.simpleMessage("複製 QQ 群號"),
    "copy_success": MessageLookupByLibrary.simpleMessage("複製成功"),
    "course_available_week": MessageLookupByLibrary.simpleMessage("開課星期"),
    "course_id": MessageLookupByLibrary.simpleMessage("課程代碼"),
    "course_name": MessageLookupByLibrary.simpleMessage("課程名稱"),
    "course_room_name": MessageLookupByLibrary.simpleMessage("教室"),
    "course_schedule": MessageLookupByLibrary.simpleMessage("上課時間"),
    "course_teacher_name": MessageLookupByLibrary.simpleMessage("教師姓名"),
    "credentials_invalid": MessageLookupByLibrary.simpleMessage(
      "您輸入的使用者名稱或密碼有誤",
    ),
    "credits": MessageLookupByLibrary.simpleMessage("學分"),
    "current_date": MessageLookupByLibrary.simpleMessage("當前日期："),
    "curriculum": MessageLookupByLibrary.simpleMessage("評教"),
    "curriculum_average_rating": MessageLookupByLibrary.simpleMessage("平均評價"),
    "curriculum_details": MessageLookupByLibrary.simpleMessage("課程詳情"),
    "curriculum_enter_content": MessageLookupByLibrary.simpleMessage("請輸入評論內容"),
    "curriculum_enter_title": MessageLookupByLibrary.simpleMessage("請輸入標題"),
    "curriculum_ratings_assessment": MessageLookupByLibrary.simpleMessage(
      "考覈要求",
    ),
    "curriculum_ratings_assessment_words": MessageLookupByLibrary.simpleMessage(
      "非常嚴格;嚴格;中等;寬鬆;非常寬鬆",
    ),
    "curriculum_ratings_content": MessageLookupByLibrary.simpleMessage("課程風格"),
    "curriculum_ratings_content_words": MessageLookupByLibrary.simpleMessage(
      "硬核;較難;中等;容易;非常容易",
    ),
    "curriculum_ratings_overall": MessageLookupByLibrary.simpleMessage("整體評教"),
    "curriculum_ratings_overall_words": MessageLookupByLibrary.simpleMessage(
      "特別差評;差評;中等;好評;特別好評",
    ),
    "curriculum_ratings_workload": MessageLookupByLibrary.simpleMessage("工作量"),
    "curriculum_ratings_workload_words": MessageLookupByLibrary.simpleMessage(
      "非常大;較大;中等;較小;非常小",
    ),
    "curriculum_search_hint": MessageLookupByLibrary.simpleMessage(
      "課程名稱、代碼 或 教師姓名",
    ),
    "curriculum_select_teacher": MessageLookupByLibrary.simpleMessage("請選擇教師"),
    "curriculum_select_time": MessageLookupByLibrary.simpleMessage("請選擇上課時間"),
    "curriculum_unknown_rating": MessageLookupByLibrary.simpleMessage("未知"),
    "danxi_care": MessageLookupByLibrary.simpleMessage("旦撻團隊關懷"),
    "danxi_care_message": MessageLookupByLibrary.simpleMessage(
      "親愛的洞友：\n\n不知道你爲什麼提及這個話題。如果存在傷害自己的想法，你遇到了什麼事呢？或許生存的痛苦對你來說遠大于死亡，又或者現實中沒有你信任、願意傾訴的人，那麼歡迎你將旦撻茶樓作爲真正的樹洞。大家未必能真正理解你，畢竟理解本來就是很難的事情。不過試著分享你的經歷、想法、情緒，說不定能梳理思路，發現困境的轉機。\n\n很遺憾，旦撻團隊沒有專業的心理援助成員，但我們準備了下面這個[「小藥箱」](https://danxi-dev.feishu.cn/docx/Trr5dEPfjoC97HxRklKccr1Ynyd?from=from_copylink)，真的好希望你能花費一點時間，停下來看一看。",
    ),
    "dashboard": MessageLookupByLibrary.simpleMessage("首頁"),
    "dashboard_layout": MessageLookupByLibrary.simpleMessage("首頁版面配置"),
    "data_center_unavailable_2026_0117": MessageLookupByLibrary.simpleMessage(
      "目前已切換至備援之資料中心來源，惟該來源暫不可用。請重入應用程式或清除快取後再試。",
    ),
    "date_range_select": MessageLookupByLibrary.simpleMessage("選擇日期範圍"),
    "day_ago": m4,
    "default_campus": MessageLookupByLibrary.simpleMessage("當前校區"),
    "default_language": MessageLookupByLibrary.simpleMessage("語言"),
    "delete": MessageLookupByLibrary.simpleMessage("刪除"),
    "delete_floor": MessageLookupByLibrary.simpleMessage("刪除此層"),
    "delete_image": MessageLookupByLibrary.simpleMessage("刪除圖片"),
    "delete_this_tag": MessageLookupByLibrary.simpleMessage("刪除此標籤？"),
    "deleted": MessageLookupByLibrary.simpleMessage("已刪除"),
    "developer_announcement": m5,
    "diagnostic_information": MessageLookupByLibrary.simpleMessage("診斷資訊"),
    "dining_hall_crowdedness": MessageLookupByLibrary.simpleMessage(
      "食堂排隊與消費狀況",
    ),
    "disabled": MessageLookupByLibrary.simpleMessage("已停用"),
    "divider": MessageLookupByLibrary.simpleMessage("分隔線"),
    "dorm_electricity": MessageLookupByLibrary.simpleMessage("宿舍電量"),
    "dorm_electricity_history": MessageLookupByLibrary.simpleMessage("歷史用電"),
    "dorm_electricity_subtitle": m6,
    "ecard_balance": MessageLookupByLibrary.simpleMessage("校園卡餘額"),
    "ecard_balance_log": MessageLookupByLibrary.simpleMessage("消費記錄"),
    "elementNotFound": MessageLookupByLibrary.simpleMessage("未找到要跳轉的元素"),
    "email": MessageLookupByLibrary.simpleMessage("電子郵件"),
    "empty_classrooms": MessageLookupByLibrary.simpleMessage("空教室"),
    "enable": MessageLookupByLibrary.simpleMessage("啓用"),
    "enabled": MessageLookupByLibrary.simpleMessage("已啓用"),
    "end_reached": MessageLookupByLibrary.simpleMessage("已到底了"),
    "english_language": MessageLookupByLibrary.simpleMessage("英文"),
    "enhanced_auth_cancelled": MessageLookupByLibrary.simpleMessage(
      "驗證未完成，部分功能可能暫時無法使用。",
    ),
    "enhanced_auth_continue": MessageLookupByLibrary.simpleMessage("繼續"),
    "enhanced_auth_description": MessageLookupByLibrary.simpleMessage(
      "該校園服務需要雙因素認證（2FA）。\n即將打開瀏覽器，帳號密碼將自動填入，請在瀏覽器中完成驗證。",
    ),
    "enhanced_auth_title": MessageLookupByLibrary.simpleMessage("需要雙因素認證"),
    "enhanced_auth_waiting": MessageLookupByLibrary.simpleMessage(
      "請在瀏覽器中完成身份驗證…",
    ),
    "enter_app": MessageLookupByLibrary.simpleMessage("進入應用程式"),
    "enter_captcha": MessageLookupByLibrary.simpleMessage("請輸入驗證碼"),
    "enter_forum": MessageLookupByLibrary.simpleMessage("開始茶樓之旅"),
    "entry_permission": MessageLookupByLibrary.simpleMessage("入校權限"),
    "error_adding_exam": m7,
    "error_detail": MessageLookupByLibrary.simpleMessage("詳細資訊"),
    "evening": MessageLookupByLibrary.simpleMessage("晚上"),
    "exam_schedule": MessageLookupByLibrary.simpleMessage("考試與成績"),
    "exam_unavailable": MessageLookupByLibrary.simpleMessage("考試資料不可用"),
    "export_log_confirmation": MessageLookupByLibrary.simpleMessage(
      "匯出前請確認：\n1. 在本次應用執行期間內最近發生過錯誤。如果沒有，請先重現錯誤，然後立刻返回此處重新匯出日誌；\n2. 要求你分享日誌的是可信的開發者。日誌中可能包含你的個人敏感資訊（包括登入憑證），請謹慎分享。\n\n確認匯出日誌？",
    ),
    "export_log_exporting": MessageLookupByLibrary.simpleMessage("匯出日誌中…"),
    "export_log_success": MessageLookupByLibrary.simpleMessage("匯出成功"),
    "export_log_to_path": m8,
    "failed": MessageLookupByLibrary.simpleMessage("載入失敗"),
    "failed_exam_no_grade": MessageLookupByLibrary.simpleMessage(
      "補緩考成績請以教務系統爲準",
    ),
    "fatal_error": MessageLookupByLibrary.simpleMessage("錯誤"),
    "favorites": MessageLookupByLibrary.simpleMessage("收藏"),
    "fenglin_campus": MessageLookupByLibrary.simpleMessage("楓林校區"),
    "filtering_by_tag": m9,
    "fold": MessageLookupByLibrary.simpleMessage("摺疊"),
    "fold_floor": MessageLookupByLibrary.simpleMessage("摺疊本層"),
    "folded": MessageLookupByLibrary.simpleMessage("該內容已摺疊，點擊査看"),
    "follow_system_palette": MessageLookupByLibrary.simpleMessage("跟隨系統配色"),
    "follow_system_palette_description": MessageLookupByLibrary.simpleMessage(
      "使用基于桌布的 Android Material You 動態色彩",
    ),
    "forgot_password": MessageLookupByLibrary.simpleMessage("忘記密碼"),
    "format_exception": MessageLookupByLibrary.simpleMessage("解析錯誤"),
    "formula": MessageLookupByLibrary.simpleMessage("[公式]"),
    "forum": MessageLookupByLibrary.simpleMessage("茶樓"),
    "forum_clean_mode": MessageLookupByLibrary.simpleMessage("清淨模式"),
    "forum_clean_mode_description": MessageLookupByLibrary.simpleMessage(
      "過濾茶樓中不友善的 Emoji",
    ),
    "forum_clean_mode_detail": MessageLookupByLibrary.simpleMessage(
      "開啓清淨模式後，茶樓中部分被廣泛認爲「不友善」的 Emoji 表情將會被過濾。",
    ),
    "forum_hidden_tags": MessageLookupByLibrary.simpleMessage("屏蔽標籤"),
    "forum_hidden_tags_description": MessageLookupByLibrary.simpleMessage(
      "隱藏茶樓中帶有特定標籤的帖子",
    ),
    "forum_hidden_tags_title": MessageLookupByLibrary.simpleMessage("屏蔽標籤"),
    "forum_message": MessageLookupByLibrary.simpleMessage("站內信"),
    "forum_nsfw_behavior": MessageLookupByLibrary.simpleMessage(
      "具有謹慎閱讀（帶星號）標籤的內容",
    ),
    "forum_post_enter_content": MessageLookupByLibrary.simpleMessage("發佈"),
    "forum_show_banner": MessageLookupByLibrary.simpleMessage("顯示部分活動"),
    "forum_show_banner_description": MessageLookupByLibrary.simpleMessage(
      "[實驗性] 將在茶樓頁面頂部顯示部分不干擾瀏覽的校園活動公告",
    ),
    "forum_user_id": m10,
    "free_select": MessageLookupByLibrary.simpleMessage("選擇複製"),
    "fsy2001_description": MessageLookupByLibrary.simpleMessage("旦撻開發者"),
    "fudan_aao_notices": MessageLookupByLibrary.simpleMessage("教務處通知"),
    "fudan_api_exception": MessageLookupByLibrary.simpleMessage("校園網路界面無法解析"),
    "fudan_library_crowdedness": MessageLookupByLibrary.simpleMessage("圖書館人數"),
    "fudan_postgraduate_student": MessageLookupByLibrary.simpleMessage(
      "復旦研究生 UIS 登入",
    ),
    "fudan_qr_code": MessageLookupByLibrary.simpleMessage("復旦生活碼"),
    "fudan_staff": MessageLookupByLibrary.simpleMessage("復旦教職員登入"),
    "fudan_uis_email_login": MessageLookupByLibrary.simpleMessage("UIS 電子郵件登入"),
    "get_started": MessageLookupByLibrary.simpleMessage("開始使用"),
    "good_afternoon": MessageLookupByLibrary.simpleMessage("下午的悠閒時光～"),
    "good_morning": MessageLookupByLibrary.simpleMessage("一日之計在于晨"),
    "good_night": MessageLookupByLibrary.simpleMessage("晚上好～"),
    "good_noon": MessageLookupByLibrary.simpleMessage("快到中午啦"),
    "gpa": MessageLookupByLibrary.simpleMessage("績點"),
    "handan_campus": MessageLookupByLibrary.simpleMessage("邯鄲校區"),
    "haptic_feedback": MessageLookupByLibrary.simpleMessage("觸覺回饋"),
    "haptic_feedback_description": MessageLookupByLibrary.simpleMessage(
      "在操作時提供震動回饋",
    ),
    "has_stop_words": m11,
    "has_stop_words_title": MessageLookupByLibrary.simpleMessage("含有不適當的詞語"),
    "hasbai_description": MessageLookupByLibrary.simpleMessage("茶樓創建者＆開發者"),
    "hide": MessageLookupByLibrary.simpleMessage("隱藏"),
    "hide_hole": MessageLookupByLibrary.simpleMessage("隱藏此帖子"),
    "hide_hole_confirm": MessageLookupByLibrary.simpleMessage(
      "確定要永久隱藏此帖子嗎？隱藏後，除非重新安裝應用程式，否則將無法在帖子列表中再次看到此帖子。",
    ),
    "hide_hole_success": MessageLookupByLibrary.simpleMessage(
      "帖子已隱藏，將于下次重新整理列表後生效。",
    ),
    "hide_notification_description": MessageLookupByLibrary.simpleMessage(
      "你想要永久隱藏這則通知嗎？你可以在設定中顯示所有已隱藏的通知。",
    ),
    "hide_post_confirm": MessageLookupByLibrary.simpleMessage(
      "是否隱藏該條目？隱藏後仍可透過右上角的復原按鈕恢復。",
    ),
    "hide_post_success": MessageLookupByLibrary.simpleMessage("已成功隱藏該條目"),
    "high_contrast_color_description": MessageLookupByLibrary.simpleMessage(
      "空教室査詢與茶樓標籤",
    ),
    "history": MessageLookupByLibrary.simpleMessage("歷史記錄"),
    "hole_force_deleted": MessageLookupByLibrary.simpleMessage("已刪除"),
    "hole_frozen": MessageLookupByLibrary.simpleMessage("已凍結"),
    "hole_hidden": MessageLookupByLibrary.simpleMessage("已隱藏"),
    "hole_locked": MessageLookupByLibrary.simpleMessage("已鎖定"),
    "holiday": MessageLookupByLibrary.simpleMessage("休息日"),
    "hour_ago": m12,
    "hydrogenc_description": MessageLookupByLibrary.simpleMessage("旦撻開發者"),
    "i_have_read_and_agreed": m13,
    "i_see": MessageLookupByLibrary.simpleMessage("瞭解"),
    "identity_service": MessageLookupByLibrary.simpleMessage("統一身份認證服務"),
    "image": MessageLookupByLibrary.simpleMessage("圖片"),
    "image_save_failed": MessageLookupByLibrary.simpleMessage(
      "圖片儲存失敗，請檢査您的權限設定",
    ),
    "image_save_success": MessageLookupByLibrary.simpleMessage("圖片已儲存至相簿"),
    "image_tag": MessageLookupByLibrary.simpleMessage("[圖片]"),
    "input_reason": MessageLookupByLibrary.simpleMessage("輸入內容（留空以還原）"),
    "input_your_email": MessageLookupByLibrary.simpleMessage("輸入您的電子郵件"),
    "input_your_email_password": MessageLookupByLibrary.simpleMessage(
      "輸入您的旦撻帳戶／密碼",
    ),
    "input_your_email_secure_code": MessageLookupByLibrary.simpleMessage(
      "請輸入您的電子郵件驗證碼",
    ),
    "invalidUri": MessageLookupByLibrary.simpleMessage("無效的 URI"),
    "invalid_course_info": MessageLookupByLibrary.simpleMessage("請提供完整的課程時間資訊"),
    "ivanfei_description": MessageLookupByLibrary.simpleMessage("茶樓前端"),
    "japanese_language": MessageLookupByLibrary.simpleMessage("日文"),
    "jiangwan_campus": MessageLookupByLibrary.simpleMessage("江灣校區"),
    "jingyijun_description": MessageLookupByLibrary.simpleMessage("茶樓後端"),
    "jump_to_hole": MessageLookupByLibrary.simpleMessage("定位"),
    "koowz_description": MessageLookupByLibrary.simpleMessage("旦撻開發者"),
    "lan_connection_issue_1": MessageLookupByLibrary.simpleMessage("未能連線至校園內網"),
    "lan_connection_issue_1_action": MessageLookupByLibrary.simpleMessage(
      "校園 VPN",
    ),
    "lan_connection_issue_1_description": MessageLookupByLibrary.simpleMessage(
      "無法連線至復旦內部網路，部分功能可能不可用。然而，若你已啓用「自動使用 WebVPN 代理」，並已登入 UIS 帳戶，你仍可直接使用這些功能。\n\n若仍無法使用，請嘗試校園 VPN（EasyConnect）或連線至 Eduroam 熱點以存取內網資源。",
    ),
    "lan_connection_issue_1_guide_content": MessageLookupByLibrary.simpleMessage(
      "三步走即可：\n\n1. [點擊這裡](https://stuvpn.fudan.edu.cn/com/installClient.html#auto-common)前往 VPN 下載頁面，選擇對應平台安裝。\n2. 開啓已安裝的軟體，在位址欄輸入 stuvpn.fudan.edu.cn，點擊確定。\n3. 彈出登入畫面後，輸入自己的 UIS 帳戶，點擊連線。\n\n之後即可正常使用旦撻的各項功能！",
    ),
    "lan_connection_issue_1_guide_title": MessageLookupByLibrary.simpleMessage(
      "如何使用校園 VPN？",
    ),
    "last_15_days": MessageLookupByLibrary.simpleMessage("過去 15 天"),
    "last_30_days": MessageLookupByLibrary.simpleMessage("過去 30 天"),
    "last_7_days": MessageLookupByLibrary.simpleMessage("過去 7 天"),
    "last_created": MessageLookupByLibrary.simpleMessage("最近建立"),
    "last_replied": MessageLookupByLibrary.simpleMessage("最近回覆"),
    "last_updated": m14,
    "late_night": MessageLookupByLibrary.simpleMessage("披星戴月，不負韶華"),
    "latest_announcement": MessageLookupByLibrary.simpleMessage("最新公告"),
    "latest_reply": m15,
    "latex_description": MessageLookupByLibrary.simpleMessage(
      "LaTeX 解析器已啓用。您可以直接使用 LaTeX 語法在美元符號「\$」之間撰寫數學公式。若您不熟悉 LaTeX，可參考 https://liam.page/2014/09/08/latex-introduction/ 。",
    ),
    "latex_enabled": MessageLookupByLibrary.simpleMessage("LaTeX 已啓用"),
    "level": m16,
    "like": m17,
    "liked": m18,
    "limited_mode_description": MessageLookupByLibrary.simpleMessage(
      "無法連線至復旦內網，目前使用備用資料來源，無法依學期査看考試資料，且無法査看績點。",
    ),
    "limited_mode_title": MessageLookupByLibrary.simpleMessage("存取受限"),
    "link": MessageLookupByLibrary.simpleMessage("連結"),
    "list_my_posts": MessageLookupByLibrary.simpleMessage("査看我的帖子"),
    "list_my_punishments": MessageLookupByLibrary.simpleMessage("査看處罰歷史"),
    "list_my_replies": MessageLookupByLibrary.simpleMessage("査看我的回覆"),
    "list_view_history": MessageLookupByLibrary.simpleMessage("査看瀏覽記錄（本機）"),
    "loading": MessageLookupByLibrary.simpleMessage("載入中..."),
    "loading_qr_code": MessageLookupByLibrary.simpleMessage(
      "正在載入復活碼...\n可能需要 5～15 秒，取決于復旦伺服器。",
    ),
    "logged_in": MessageLookupByLibrary.simpleMessage("已登入"),
    "login": MessageLookupByLibrary.simpleMessage("登入"),
    "login_agreement": MessageLookupByLibrary.simpleMessage("登入即代表您同意"),
    "login_by_email_password": MessageLookupByLibrary.simpleMessage("使用旦撻帳戶登入"),
    "login_danta_account": MessageLookupByLibrary.simpleMessage("旦撻帳號登入"),
    "login_danta_community": MessageLookupByLibrary.simpleMessage("旦撻社群與服務"),
    "login_from_forum_page": MessageLookupByLibrary.simpleMessage("請從茶樓頁面登入"),
    "login_issue_1": MessageLookupByLibrary.simpleMessage(
      "登入失敗，旦撻校園助手無法完成 UIS 登入。\n出現此錯誤，很可能是因您連續多次登入失敗，觸發了驗證碼機制。\n您需要使用瀏覽器手動完成一次登入，重新開啓旦撻校園助手，即可妥善處理此情況。\n\n若問題仍然存在，請嘗試重新登入。",
    ),
    "login_issue_1_action": MessageLookupByLibrary.simpleMessage("開啓 UIS 登入頁面"),
    "login_issue_2": MessageLookupByLibrary.simpleMessage(
      "未能正確從伺服器取得本學期相關資訊，請重試。\n若直接跳過，課表相關功能可能會出現日期計算問題。",
    ),
    "login_postgraduate": MessageLookupByLibrary.simpleMessage("研究生登入"),
    "login_problem": m19,
    "login_uis": MessageLookupByLibrary.simpleMessage("復旦 UIS 登入"),
    "login_uis_description": MessageLookupByLibrary.simpleMessage(
      "您的密碼僅會用于登入復旦 UIS（統一身份驗證）",
    ),
    "login_uis_dialog_title": MessageLookupByLibrary.simpleMessage(
      "復旦本科生 UIS 登入",
    ),
    "login_uis_pwd": MessageLookupByLibrary.simpleMessage("密碼"),
    "login_uis_uid": MessageLookupByLibrary.simpleMessage("學號"),
    "login_undergraduate": MessageLookupByLibrary.simpleMessage("本科生登入"),
    "logining": MessageLookupByLibrary.simpleMessage("正在登入..."),
    "logout": MessageLookupByLibrary.simpleMessage("登出"),
    "logout_forum": MessageLookupByLibrary.simpleMessage("您即將登出茶樓"),
    "logout_question_prompt": MessageLookupByLibrary.simpleMessage(
      "所有儲存在本機的資料將被刪除。",
    ),
    "logout_question_prompt_title": MessageLookupByLibrary.simpleMessage(
      "確定要登出嗎？",
    ),
    "major": MessageLookupByLibrary.simpleMessage("專業"),
    "manually_add_course": MessageLookupByLibrary.simpleMessage("手動新增課程："),
    "manually_add_course_message": MessageLookupByLibrary.simpleMessage(
      "是否有課程未收錄在課表上，但你又想査看呢？手動新增它吧。",
    ),
    "mark_as_dealt": MessageLookupByLibrary.simpleMessage("標記為已處理"),
    "markdown_description": MessageLookupByLibrary.simpleMessage(
      "Markdown 解析器已啓用。您可以直接使用 Markdown 語法撰寫帖子。若您不熟悉 Markdown，可參考 https://www.runoob.com/markdown/md-tutorial.html。",
    ),
    "markdown_enabled": MessageLookupByLibrary.simpleMessage("Markdown 已啓用"),
    "messages": MessageLookupByLibrary.simpleMessage("訊息"),
    "minute_ago": m20,
    "modified": MessageLookupByLibrary.simpleMessage("已修改"),
    "modify": MessageLookupByLibrary.simpleMessage("修改"),
    "modify_floor": MessageLookupByLibrary.simpleMessage("修改本層"),
    "modify_password": MessageLookupByLibrary.simpleMessage("修改密碼"),
    "modify_tag_division": MessageLookupByLibrary.simpleMessage("修改標籤與分區"),
    "modify_to": m21,
    "modify_to_floor": m22,
    "moment_ago": MessageLookupByLibrary.simpleMessage("剛剛"),
    "morning": MessageLookupByLibrary.simpleMessage("上午"),
    "most_least_crowded_canteen": m23,
    "multiple_select_mode_enter": MessageLookupByLibrary.simpleMessage(
      "進入多選模式",
    ),
    "multiple_select_mode_exit": MessageLookupByLibrary.simpleMessage("退出多選模式"),
    "my_email_not_in_list": MessageLookupByLibrary.simpleMessage(
      "我的學校電子郵件不在列表中",
    ),
    "name": MessageLookupByLibrary.simpleMessage("名稱"),
    "new_post": MessageLookupByLibrary.simpleMessage("發佈新帖子"),
    "new_shortcut_card": MessageLookupByLibrary.simpleMessage("新增快捷卡片"),
    "new_shortcut_description": MessageLookupByLibrary.simpleMessage(
      "點擊此卡片可開啓指定網頁",
    ),
    "new_update_description": m24,
    "new_update_title": MessageLookupByLibrary.simpleMessage("發現新版本"),
    "next": MessageLookupByLibrary.simpleMessage("下一步"),
    "next_course_is": m25,
    "next_course_none": MessageLookupByLibrary.simpleMessage("今日的課程已全部結束"),
    "next_course_setup": MessageLookupByLibrary.simpleMessage(
      "請先到課表頁面完成相關設定，然後重新整理",
    ),
    "next_question": MessageLookupByLibrary.simpleMessage("下一題"),
    "no_course_review": MessageLookupByLibrary.simpleMessage("該課程尚無評論"),
    "no_data": MessageLookupByLibrary.simpleMessage("資料爲空"),
    "no_data_error": MessageLookupByLibrary.simpleMessage("資料爲空"),
    "no_favorites": MessageLookupByLibrary.simpleMessage("收藏清單爲空"),
    "no_matching_bus": MessageLookupByLibrary.simpleMessage("您所在的校區沒有可搭乘的校車"),
    "no_subscriptions": MessageLookupByLibrary.simpleMessage("訂閱清單爲空"),
    "not_fudan_student": MessageLookupByLibrary.simpleMessage("非復旦學生暫不支援課表功能。"),
    "not_logged_in": MessageLookupByLibrary.simpleMessage("未登入"),
    "notification_mention": MessageLookupByLibrary.simpleMessage("您的帖子被引用"),
    "notification_mention_s": MessageLookupByLibrary.simpleMessage("引用"),
    "notification_reported": MessageLookupByLibrary.simpleMessage(
      "您的帖子因舉報而被處理",
    ),
    "notification_reported_s": MessageLookupByLibrary.simpleMessage("舉報"),
    "notification_settings": MessageLookupByLibrary.simpleMessage("推送通知"),
    "notification_subscription": MessageLookupByLibrary.simpleMessage(
      "您訂閱的帖子有新回覆",
    ),
    "notification_subscription_s": MessageLookupByLibrary.simpleMessage("訂閱"),
    "obtaining_information": MessageLookupByLibrary.simpleMessage("正在取得資訊……"),
    "ok": MessageLookupByLibrary.simpleMessage("好"),
    "older_announcement": MessageLookupByLibrary.simpleMessage("往期公告"),
    "only_show_dz": MessageLookupByLibrary.simpleMessage("只看樓主"),
    "open_source_software_licenses": MessageLookupByLibrary.simpleMessage(
      "開源軟體授權條款",
    ),
    "operation_failed": MessageLookupByLibrary.simpleMessage("操作失敗"),
    "operation_successful": MessageLookupByLibrary.simpleMessage("操作成功"),
    "other_types_exam": MessageLookupByLibrary.simpleMessage("論文與其他考試"),
    "our_email_is": m26,
    "out_of_dining_time": MessageLookupByLibrary.simpleMessage("現在不是用餐時間"),
    "password": MessageLookupByLibrary.simpleMessage("密碼"),
    "pe_exercises": MessageLookupByLibrary.simpleMessage("體育鍛鍊"),
    "percentile": MessageLookupByLibrary.simpleMessage("百分位"),
    "pin_unpin_hole": MessageLookupByLibrary.simpleMessage("置頂／取消置頂此帖子"),
    "pinned": MessageLookupByLibrary.simpleMessage("置頂"),
    "post_does_not_exist": MessageLookupByLibrary.simpleMessage("沒有這則帖子"),
    "post_has_no_tags": MessageLookupByLibrary.simpleMessage(
      "我們不建議發佈無標籤的帖子，一定要繼續發送嗎？",
    ),
    "post_has_no_tags_title": MessageLookupByLibrary.simpleMessage("沒有標籤"),
    "post_time": m27,
    "postgraduates_need_login": MessageLookupByLibrary.simpleMessage(
      "點擊此處以登入課表系統。",
    ),
    "posting": MessageLookupByLibrary.simpleMessage("正在發佈內容..."),
    "prev_question": MessageLookupByLibrary.simpleMessage("上一題"),
    "preview": MessageLookupByLibrary.simpleMessage("預覽"),
    "privacy_policy": MessageLookupByLibrary.simpleMessage("隱私政策與使用條款"),
    "project_page": MessageLookupByLibrary.simpleMessage("專案網頁"),
    "proxy_setting": MessageLookupByLibrary.simpleMessage("代理設定"),
    "proxy_setting_add_new": MessageLookupByLibrary.simpleMessage("新增代理"),
    "proxy_setting_already_exists": MessageLookupByLibrary.simpleMessage(
      "該代理已存在",
    ),
    "proxy_setting_do_not_use": MessageLookupByLibrary.simpleMessage("不使用代理"),
    "proxy_setting_input_hint": MessageLookupByLibrary.simpleMessage(
      "如 127.0.0.1:1234（留空以關閉代理）",
    ),
    "proxy_setting_input_title": MessageLookupByLibrary.simpleMessage(
      "輸入 HTTP 代理位址",
    ),
    "proxy_setting_remove": MessageLookupByLibrary.simpleMessage("移除代理"),
    "proxy_setting_unset": MessageLookupByLibrary.simpleMessage("未設定"),
    "push_notification_reg_failed": MessageLookupByLibrary.simpleMessage(
      "推送通知註冊失敗",
    ),
    "push_notification_reg_failed_des": m28,
    "qr_code_terms_not_agreed": MessageLookupByLibrary.simpleMessage("需要接受條款"),
    "quiz_completed": MessageLookupByLibrary.simpleMessage(
      "您已完成社群公約的學習，請在使用茶樓期間牢記並遵守",
    ),
    "quiz_has_errors": m29,
    "quiz_not_answered": MessageLookupByLibrary.simpleMessage(
      "您尚未閱讀社群公約，請點擊下方連結閱讀後作答，全部正確後方可進入茶樓",
    ),
    "quote": MessageLookupByLibrary.simpleMessage("引用"),
    "rank": MessageLookupByLibrary.simpleMessage("排名"),
    "rate": MessageLookupByLibrary.simpleMessage("爲我們評分"),
    "re_login": MessageLookupByLibrary.simpleMessage("重新登入"),
    "read_announcements": MessageLookupByLibrary.simpleMessage("査看開發組公告"),
    "reason_report_post": m30,
    "recommended_tags": MessageLookupByLibrary.simpleMessage("推薦標籤"),
    "recommended_tags_availibity": MessageLookupByLibrary.simpleMessage(
      "[實驗性] 根據你的帖子內容推薦一些標籤",
    ),
    "recommended_tags_description": MessageLookupByLibrary.simpleMessage(
      "警告：這是一項實驗性功能。推薦內容可能不正確或不恰當，僅供參考。您若發現推薦內容不合適，請回報至 dev@danta.tech。\n\n所有資料皆于本機處理，不會上傳至伺服器。\n\n模型版本：0.1a (CoreML)\n\n系統需求：iOS 14.0 及以上",
    ),
    "redo_incorrect_questions": MessageLookupByLibrary.simpleMessage("重做錯題"),
    "refresh": MessageLookupByLibrary.simpleMessage("重新整理"),
    "registration_succeed": MessageLookupByLibrary.simpleMessage("註冊成功"),
    "remove_favorite_hole_confirmation": MessageLookupByLibrary.simpleMessage(
      "你確定要刪除該筆收藏嗎？",
    ),
    "remove_subscribed_hole_confirmation": MessageLookupByLibrary.simpleMessage(
      "你確定要刪除該筆訂閱嗎？",
    ),
    "reply_failed": MessageLookupByLibrary.simpleMessage("回覆失敗"),
    "reply_to": m31,
    "reply_to_floor": m32,
    "report": MessageLookupByLibrary.simpleMessage("舉報"),
    "report_failed": MessageLookupByLibrary.simpleMessage("舉報失敗"),
    "report_success": MessageLookupByLibrary.simpleMessage(
      "舉報成功，感謝您爲維護良好社群環境所作的貢獻。",
    ),
    "reports": MessageLookupByLibrary.simpleMessage("舉報"),
    "request_success": MessageLookupByLibrary.simpleMessage("請求成功。"),
    "require_login": MessageLookupByLibrary.simpleMessage("您需要先登入才能使用此功能。"),
    "reset": MessageLookupByLibrary.simpleMessage("重置"),
    "reset_layout": MessageLookupByLibrary.simpleMessage("重置版面配置"),
    "response_error": MessageLookupByLibrary.simpleMessage("伺服器回傳錯誤碼："),
    "restore_hidden_confirm": MessageLookupByLibrary.simpleMessage(
      "是否復原所有隱藏條目？",
    ),
    "retry": MessageLookupByLibrary.simpleMessage("重試"),
    "save_your_information": MessageLookupByLibrary.simpleMessage("請妥善保存以下資訊"),
    "school_bus": MessageLookupByLibrary.simpleMessage("校車時刻表"),
    "school_bus_not_showing_all": m33,
    "school_bus_showing_all": MessageLookupByLibrary.simpleMessage("已顯示全部校車班次"),
    "school_bus_tap_to_not_show_all": m34,
    "school_bus_tap_to_show_all": MessageLookupByLibrary.simpleMessage(
      "點擊以顯示全部",
    ),
    "screenshot_warning": MessageLookupByLibrary.simpleMessage(
      "爲保障茶樓資訊安全及其他使用者的隱私，請勿將截圖傳送至任何平台，感謝您的配合。",
    ),
    "screenshot_warning_title": MessageLookupByLibrary.simpleMessage("偵測到截圖"),
    "scroll_to_end": MessageLookupByLibrary.simpleMessage("前往底部"),
    "search": MessageLookupByLibrary.simpleMessage("搜尋"),
    "search_by_floor_tip": m35,
    "search_by_pid_tip": m36,
    "search_by_tag_tip": m37,
    "search_by_text_accurate_tip": m38,
    "search_by_text_tip": m39,
    "search_hint": MessageLookupByLibrary.simpleMessage("搜尋 或 #PID"),
    "search_result": MessageLookupByLibrary.simpleMessage("搜尋結果"),
    "season_autumn": MessageLookupByLibrary.simpleMessage("秋"),
    "season_spring": MessageLookupByLibrary.simpleMessage("春"),
    "season_summer": MessageLookupByLibrary.simpleMessage("夏"),
    "season_winter": MessageLookupByLibrary.simpleMessage("冬"),
    "seats": m40,
    "second_ago": m41,
    "secure_code": MessageLookupByLibrary.simpleMessage("驗證碼"),
    "secure_verification": MessageLookupByLibrary.simpleMessage("安全驗證"),
    "secure_verification_description": MessageLookupByLibrary.simpleMessage(
      "我們剛剛向您發送了一封含有一次性驗證碼的郵件，請輸入您收到的驗證碼。",
    ),
    "select_all": MessageLookupByLibrary.simpleMessage("全選"),
    "select_date_range_far_past": MessageLookupByLibrary.simpleMessage("遙遠的過去"),
    "select_date_range_from": MessageLookupByLibrary.simpleMessage("從"),
    "select_date_range_invalid_range": MessageLookupByLibrary.simpleMessage(
      "開始日期必須早于結束日期",
    ),
    "select_date_range_now": MessageLookupByLibrary.simpleMessage("現在"),
    "select_date_range_to": MessageLookupByLibrary.simpleMessage("到"),
    "select_semester": MessageLookupByLibrary.simpleMessage("選擇課表學期"),
    "select_tags": MessageLookupByLibrary.simpleMessage("選擇標籤"),
    "semester": m42,
    "semester_start_at_monday": MessageLookupByLibrary.simpleMessage(
      "學期開始日期通常是指第一週的星期一，但你選擇的日期似乎不是週一。你確定要設定爲該日期嗎？",
    ),
    "semester_start_date": MessageLookupByLibrary.simpleMessage("設定學期開始日期："),
    "send_email": MessageLookupByLibrary.simpleMessage("發送電子郵件"),
    "set_password": MessageLookupByLibrary.simpleMessage("設定密碼"),
    "set_your_danxi_password": MessageLookupByLibrary.simpleMessage(
      "爲旦撻帳戶設定一個密碼",
    ),
    "settings": MessageLookupByLibrary.simpleMessage("設定"),
    "share": MessageLookupByLibrary.simpleMessage("分享"),
    "shareFloorSuccess": MessageLookupByLibrary.simpleMessage(
      "分享該樓層成功！請檢査剪貼簿。",
    ),
    "shareHoleSuccess": MessageLookupByLibrary.simpleMessage("分享該洞成功！請檢査剪貼簿。"),
    "share_as_ics": MessageLookupByLibrary.simpleMessage("匯出爲 ICS"),
    "share_floor": MessageLookupByLibrary.simpleMessage("以文字形式分享樓層"),
    "share_hole": MessageLookupByLibrary.simpleMessage("以文字形式分享帖子"),
    "share_hole_title": MessageLookupByLibrary.simpleMessage("選擇要分享的樓層"),
    "show": MessageLookupByLibrary.simpleMessage("顯示"),
    "show_all": MessageLookupByLibrary.simpleMessage("顯示全部"),
    "show_all_replies": MessageLookupByLibrary.simpleMessage("査看全部"),
    "show_hidden_notifications": MessageLookupByLibrary.simpleMessage(
      "顯示已隱藏的首頁通知",
    ),
    "show_hidden_notifications_description":
        MessageLookupByLibrary.simpleMessage("點擊以恢復所有已隱藏的首頁通知卡片"),
    "show_this_person": MessageLookupByLibrary.simpleMessage("只看此人"),
    "show_unread": MessageLookupByLibrary.simpleMessage("顯示未讀"),
    "silence_detail": MessageLookupByLibrary.simpleMessage(
      "由于違反社群規定，您被禁止發言。\n\n如果您認爲此決定有誤，請聯絡 admin@danta.tech",
    ),
    "silence_notice": MessageLookupByLibrary.simpleMessage("沒有發帖權限"),
    "simplified_chinese_language": MessageLookupByLibrary.simpleMessage("簡體中文"),
    "singularity_s0_description": MessageLookupByLibrary.simpleMessage(
      "旦撻開發者＆茶樓後端",
    ),
    "sjtu_student": MessageLookupByLibrary.simpleMessage("上海交通大學校外登入"),
    "skip": MessageLookupByLibrary.simpleMessage("跳過"),
    "sort_order": MessageLookupByLibrary.simpleMessage("排序方式"),
    "start_date_select": MessageLookupByLibrary.simpleMessage("學期開始日期査詢："),
    "start_date_select_message": MessageLookupByLibrary.simpleMessage(
      "必須先正確選擇學期的開始日期，否則會導致日期錯誤。\n提示：開始日期是第一週的星期一。",
    ),
    "start_quiz": MessageLookupByLibrary.simpleMessage("開始作答"),
    "sticker": MessageLookupByLibrary.simpleMessage("表情"),
    "sticker_tag": MessageLookupByLibrary.simpleMessage("[表情]"),
    "submit": MessageLookupByLibrary.simpleMessage("發送"),
    "subscriptions": MessageLookupByLibrary.simpleMessage("訂閱"),
    "tag_least_crowded": MessageLookupByLibrary.simpleMessage("最空閒"),
    "tag_most_crowded": MessageLookupByLibrary.simpleMessage("最擁擠"),
    "tap_to_show_preview": MessageLookupByLibrary.simpleMessage("點擊以顯示預覽"),
    "tap_to_view": MessageLookupByLibrary.simpleMessage("點擊以査看"),
    "terms_and_conditions_content": MessageLookupByLibrary.simpleMessage(
      "登入即表示您已閱讀並同意",
    ),
    "terms_and_conditions_content_end": MessageLookupByLibrary.simpleMessage(
      "。",
    ),
    "terms_and_conditions_title": MessageLookupByLibrary.simpleMessage("法律"),
    "terms_and_privacy": MessageLookupByLibrary.simpleMessage("服務條款與隱私政策"),
    "theme": MessageLookupByLibrary.simpleMessage("主題"),
    "theme_color": MessageLookupByLibrary.simpleMessage("主題色"),
    "theme_color_description": MessageLookupByLibrary.simpleMessage(
      "切換旦撻的主題配色",
    ),
    "theme_color_description_detail": MessageLookupByLibrary.simpleMessage(
      "選擇預設顏色或自訂顏色以切換旦撻主題配色",
    ),
    "theme_type": MessageLookupByLibrary.simpleMessage("主題"),
    "theme_type_dark": MessageLookupByLibrary.simpleMessage("深色"),
    "theme_type_light": MessageLookupByLibrary.simpleMessage("淺色"),
    "theme_type_system": MessageLookupByLibrary.simpleMessage("跟隨系統"),
    "timetable": MessageLookupByLibrary.simpleMessage("日程"),
    "timetable_last_updated": MessageLookupByLibrary.simpleMessage("最後重新整理時間："),
    "timetable_no_last_updated": MessageLookupByLibrary.simpleMessage("暫無"),
    "tip_that_danxi_is_not_fdu": MessageLookupByLibrary.simpleMessage(
      "注意：旦撻帳號與復旦大學無關，請不要在此嘗試您的復旦電子郵件密碼（或「統一身份認證」密碼）。",
    ),
    "today_course": MessageLookupByLibrary.simpleMessage("今日課程"),
    "traditional_chinese_language": MessageLookupByLibrary.simpleMessage(
      "正體中文",
    ),
    "unable_to_access_url": MessageLookupByLibrary.simpleMessage(
      "測試連線失敗\n無法存取此網頁，請檢査 URL",
    ),
    "unable_to_find_quote": MessageLookupByLibrary.simpleMessage("無法找到被引用的帖子"),
    "unauthorized": MessageLookupByLibrary.simpleMessage("未授權"),
    "unavailable": MessageLookupByLibrary.simpleMessage("不可用"),
    "under_maintenance": MessageLookupByLibrary.simpleMessage(
      "無法連線至復旦內部網路。\n你可以使用校園 VPN（Easy Connect）在校外存取校園網。",
    ),
    "unknown_error": MessageLookupByLibrary.simpleMessage("未知錯誤"),
    "unknown_start_date": m43,
    "unmovable_widget": MessageLookupByLibrary.simpleMessage("該項目不可移動"),
    "unsupported": MessageLookupByLibrary.simpleMessage("此裝置暫不支援"),
    "update_now": MessageLookupByLibrary.simpleMessage("更新"),
    "uploading_image": MessageLookupByLibrary.simpleMessage("正在上傳圖片..."),
    "uploading_image_failed": MessageLookupByLibrary.simpleMessage("上傳圖片失敗"),
    "use_webvpn_description": MessageLookupByLibrary.simpleMessage(
      "啓用該項目後，允許在非校園網環境下直接存取茶樓、評教等功能（需要重新啓動應用程式）",
    ),
    "use_webvpn_title": MessageLookupByLibrary.simpleMessage("自動使用 WebVPN 代理"),
    "version": MessageLookupByLibrary.simpleMessage("版本"),
    "view_count": m44,
    "view_history": MessageLookupByLibrary.simpleMessage("査看修改歷史"),
    "view_ossl": MessageLookupByLibrary.simpleMessage("本應用程式的誕生離不開許多開源軟體。査看"),
    "w568w_description": MessageLookupByLibrary.simpleMessage("旦撻建立者＆開發者"),
    "warning": MessageLookupByLibrary.simpleMessage("警告"),
    "weak_password": MessageLookupByLibrary.simpleMessage(
      "登入失敗，未知錯誤\n請注意：若在登入 UIS 時總是提示密碼較弱，請嘗試修改密碼後再試。",
    ),
    "week": m45,
    "weekday": MessageLookupByLibrary.simpleMessage("工作日"),
    "welcome": m46,
    "welcome_1": MessageLookupByLibrary.simpleMessage("時刻保持最新"),
    "welcome_1s": MessageLookupByLibrary.simpleMessage("當您關注的帖子更新時，您將收到推送通知"),
    "welcome_2": MessageLookupByLibrary.simpleMessage("分區討論"),
    "welcome_2s": MessageLookupByLibrary.simpleMessage("在專門的空間進行更專注的討論"),
    "welcome_3": MessageLookupByLibrary.simpleMessage("輕鬆編輯"),
    "welcome_3s": MessageLookupByLibrary.simpleMessage(
      "在帖子中使用 LaTeX 與 Markdown 語法",
    ),
    "welcome_back": MessageLookupByLibrary.simpleMessage("歡迎回來"),
    "welcome_feature": MessageLookupByLibrary.simpleMessage("歡迎"),
    "welcome_prompt": MessageLookupByLibrary.simpleMessage(
      "歡迎來到旦撻校園助手！\n\n如果你是第一次使用旦撻校園助手，或許你想看看 FAQ 板塊？",
    ),
    "welcome_to_forum": MessageLookupByLibrary.simpleMessage("歡迎註冊茶樓"),
    "windows_auto_start_description": MessageLookupByLibrary.simpleMessage(
      "在開機時自動開啓旦撻校園助手",
    ),
    "windows_auto_start_title": MessageLookupByLibrary.simpleMessage("自動啓動"),
    "windows_auto_start_wait_dialog_message":
        MessageLookupByLibrary.simpleMessage(
          "您剛才應該看到 Windows 彈出的 UAC 權限管理視窗。\n請在允許後，點擊下方「好」以完成設定。",
        ),
    "windows_auto_start_wait_dialog_title":
        MessageLookupByLibrary.simpleMessage("等待彈出授權視窗"),
    "your_gpa": MessageLookupByLibrary.simpleMessage("你的績點"),
    "your_gpa_subtitle": m47,
    "zhangjiang_campus": MessageLookupByLibrary.simpleMessage("張江校區"),
  };
}
