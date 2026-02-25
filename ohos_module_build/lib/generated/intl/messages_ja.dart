// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ja locale. All the
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
  String get localeName => 'ja';

  static String m0(floor) => "#${floor}を削除しようとしている";

  static String m1(review) => "#${review}を削除しようとしている";

  static String m2(date) => "このセクションは${date}まで投稿することができません。";

  static String m3(days) => "${days} 日間";

  static String m4(num) => "${num}日前";

  static String m5(date) => "開発チームのお知らせ ${date}";

  static String m6(available, used) => "バランス：${available} kWh；使用した：${used} kWh";

  static String m7(name) => "試験「${name}」の追加の時にエラー";

  static String m8(path) => "ログファイルは一時ファイルにエクスポートされました：${path}。開発者に送信してください。";

  static String m9(tag) => "「${tag}」によるフィルタリング";

  static String m10(id) => "ログイン (ID: ${id})";

  static String m11(stopWord) =>
      "ポストに「${stopWord}」の不適切な言葉が含まれている。\nこのような言葉は、理性的な議論に相応しくないため、攻撃や不適切なコメントを呼び起こす可能性が高く、送信を推奨しませんが、続けなければならないのでしょうか？";

  static String m12(num) => "${num}時間前";

  static String m13(name) => "${name}を読み、同意します";

  static String m14(date) => "最近の更新日: ${date}";

  static String m15(username, date) => "${username} は${date}返信した：";

  static String m16(level) => "レベル ${level}";

  static String m17(likes) => "いいね (${likes})";

  static String m18(likes) => "いいねした (${likes})";

  static String m19(QQ) =>
      "ログインできない場合は、dev@danta.techまでご連絡ください、またはQQグループ（番号：${QQ}）にご参加ください。 .\n\nその間に、「開発チームのお知らせ」を読んでくださいと、こんな問題が言及されている可能性があります。";

  static String m20(num) => "${num}分前";

  static String m21(name) => "改訂中 #${name}";

  static String m22(name) => "改訂中 ##${name}";

  static String m23(mostCrowded, leastCrowded) =>
      "[最多人数]${mostCrowded}食堂 [最小人数]${leastCrowded}食堂";

  static String m24(currentVersion, latestVersion) =>
      "現在のバージョン：${currentVersion}\n最新バージョン：${latestVersion}\n\n更新履歴：";

  static String m25(courseName, courseLeft) =>
      "次の授業は${courseName}，今日も${courseLeft}コース";

  static String m26(email) => "私たちのEメールは ${email} です。";

  static String m27(time) => "投稿時間：${time}";

  static String m28(error) => "プッシュ通知を受信できない場合があります\nエラー：${error}";

  static String m29(count) =>
      "この試験で，間違った質問が${count}個あります。バートンを押して、間違った質問をやり直してください";

  static String m30(id) => "報告理由をご入力してください。(#${id})";

  static String m31(name) => "Re： #${name}";

  static String m32(name) => "Re： ##${name}";

  static String m33(hh, mm) => "${hh}:${mm} 以降のスクールバス発車時刻のみを表示しています";

  static String m34(hh, mm) => "クリックすると ${hh}:${mm} 以降のスクールバス発車時刻のみを表示する";

  static String m35(floorId) => "「${floorId}」返信へ";

  static String m36(pid) => "「${pid}」ポストへ";

  static String m37(tag) => "このスペースのタグ「${tag}」のポストを見る";

  static String m38(searchKeyword) => "本文中に「${searchKeyword}」を含むポストを精密検索する";

  static String m39(searchKeyword) => "本文中に「${searchKeyword}」を含むポストを検索する";

  static String m40(seats) => "座席数:${seats}";

  static String m41(num) => "${num}秒前";

  static String m42(schoolYear, semName) => "${schoolYear}年度 ${semName}学期";

  static String m43(semesterName) =>
      "学期(${semesterName})の開始日はまだわかりませんので、手動で設定してください";

  static String m44(view) => "ビュー：${view}";

  static String m45(week) => "第 ${week} 週";

  static String m46(name) => "ようこそ、${name}";

  static String m47(rank, credits) =>
      "総学点${credits}、ランキングは${rank}位です。詳細はこちらをご覧ください";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "Dest1n1_description": MessageLookupByLibrary.simpleMessage(
      "フォーラムのフロントエンド開発者",
    ),
    "Frankstein73_description": MessageLookupByLibrary.simpleMessage("旦タの開発者"),
    "KYLN24_description": MessageLookupByLibrary.simpleMessage(
      "フォーラムのフロントエンド開発者",
    ),
    "about": MessageLookupByLibrary.simpleMessage("このアプリについて"),
    "about_to_delete_floor": m0,
    "about_to_delete_review": m1,
    "accessibility_coloring": MessageLookupByLibrary.simpleMessage(
      "補助機能：ハイコントラスト色",
    ),
    "account": MessageLookupByLibrary.simpleMessage("アカウント"),
    "account_is_set": MessageLookupByLibrary.simpleMessage("アカウント設定完了"),
    "acknowledgements": MessageLookupByLibrary.simpleMessage("謝辞"),
    "acknowledgements_markdown": MessageLookupByLibrary.simpleMessage(
      "このアプリのアイコンをデザインしてくれた [IvanFei](https://github.com/ivanfei-1) さん、ステッカーなどのアートデザインを提供してくれた [MSapphire](https://www.xiaohongshu.com/user/profile/6575475f000000001902d794) さん、[Lin2510]() さん、[zzz111]() さんに感謝します。",
    ),
    "add": MessageLookupByLibrary.simpleMessage("追加"),
    "add_class_time": MessageLookupByLibrary.simpleMessage("授業時間を追加"),
    "add_courses": MessageLookupByLibrary.simpleMessage("手動でコースを追加する"),
    "add_image": MessageLookupByLibrary.simpleMessage("画像を追加する"),
    "add_new_card": MessageLookupByLibrary.simpleMessage("新カード"),
    "add_new_divider": MessageLookupByLibrary.simpleMessage("新ディバイダー"),
    "add_new_tag": MessageLookupByLibrary.simpleMessage("新しいタグを追加する"),
    "add_special_tag": MessageLookupByLibrary.simpleMessage("スペシャルフラッグ追加"),
    "admin_options": MessageLookupByLibrary.simpleMessage("管理者用オプション"),
    "after_enabled": MessageLookupByLibrary.simpleMessage("有効"),
    "afternoon": MessageLookupByLibrary.simpleMessage("午後"),
    "agree_license_tip": MessageLookupByLibrary.simpleMessage(
      "以下の規約を同意の必要があります",
    ),
    "all": MessageLookupByLibrary.simpleMessage("全て"),
    "all_tags": MessageLookupByLibrary.simpleMessage("全てのタグ"),
    "already_set": MessageLookupByLibrary.simpleMessage("設定済み"),
    "and_more": MessageLookupByLibrary.simpleMessage("… など"),
    "app_description": MessageLookupByLibrary.simpleMessage(
      "復旦大学学部生数名が作成したミニチュア復旦統合サービスアプリで、あなたの生活に便利になることを願っています～",
    ),
    "app_description_title": MessageLookupByLibrary.simpleMessage("紹介"),
    "app_feedback": MessageLookupByLibrary.simpleMessage("【フィードバック】"),
    "app_name": MessageLookupByLibrary.simpleMessage("旦タ"),
    "are_you_sure": MessageLookupByLibrary.simpleMessage("削除は大丈夫ですか？"),
    "are_you_sure_pin_unpin": MessageLookupByLibrary.simpleMessage(
      "ピンとアンピンは大丈夫ですか？",
    ),
    "authors": MessageLookupByLibrary.simpleMessage("開発者"),
    "background_image": MessageLookupByLibrary.simpleMessage("背景画像"),
    "background_image_already_set": MessageLookupByLibrary.simpleMessage(
      "背景画像が設定されていますが、削除されますか？",
    ),
    "background_image_description": MessageLookupByLibrary.simpleMessage(
      "フォーラムの背景となる画像を選択します",
    ),
    "ban_post_until": m2,
    "ban_reporter": MessageLookupByLibrary.simpleMessage("報告者を制限する"),
    "ban_reporter_days": m3,
    "ban_reporter_reason_hint": MessageLookupByLibrary.simpleMessage(
      "制限理由（任意）",
    ),
    "ban_reporter_tip": MessageLookupByLibrary.simpleMessage(
      "注意：この操作は報告を提出したユーザーを制限します。報告されたユーザーではありません。",
    ),
    "before_enabled": MessageLookupByLibrary.simpleMessage("無効"),
    "boreas618_description": MessageLookupByLibrary.simpleMessage("旦タの開発者"),
    "bus_dest": MessageLookupByLibrary.simpleMessage("到着駅"),
    "bus_query": MessageLookupByLibrary.simpleMessage("スクールバス時刻表"),
    "bus_start": MessageLookupByLibrary.simpleMessage("出発駅"),
    "cache_cleared": MessageLookupByLibrary.simpleMessage("キャッシュを削除した"),
    "cancel": MessageLookupByLibrary.simpleMessage("キャンセル"),
    "cannot_launch_url": MessageLookupByLibrary.simpleMessage(
      "このリンクを開くことができません",
    ),
    "cant_login": MessageLookupByLibrary.simpleMessage("ログインできない？"),
    "captcha_needed": MessageLookupByLibrary.simpleMessage(
      "認証コードの入力が必要ですので、画面の指示に従ってください。",
    ),
    "choose_area": MessageLookupByLibrary.simpleMessage("キャンパス選択"),
    "choose_your_email_below": MessageLookupByLibrary.simpleMessage(
      "以下のオプションからメールボックスを選択してください",
    ),
    "classroom": MessageLookupByLibrary.simpleMessage("教室"),
    "clear": MessageLookupByLibrary.simpleMessage("削除"),
    "clear_cache": MessageLookupByLibrary.simpleMessage("画像キャッシュ削除"),
    "clear_cache_description": MessageLookupByLibrary.simpleMessage(
      "次回表示時に写真が再ロードされます",
    ),
    "clear_history_confirm": MessageLookupByLibrary.simpleMessage(
      "ローカルの閲覧履歴を削除しますか？この過程は不可逆です",
    ),
    "community_convention": MessageLookupByLibrary.simpleMessage("コミュニティー公約"),
    "confirm": MessageLookupByLibrary.simpleMessage("確認"),
    "confirm_delete_image": MessageLookupByLibrary.simpleMessage(
      "エディターからこの画像のすべてのインスタンスを削除しますか？",
    ),
    "connection_cancelled": MessageLookupByLibrary.simpleMessage("接続が異常に切断された"),
    "connection_timeout": MessageLookupByLibrary.simpleMessage("ネット接続タイムアウト"),
    "contact_us": MessageLookupByLibrary.simpleMessage("連絡"),
    "continue_sending": MessageLookupByLibrary.simpleMessage("送り続け"),
    "copy": MessageLookupByLibrary.simpleMessage("すべてコピー"),
    "copy_floor_id": MessageLookupByLibrary.simpleMessage("階層番号をコピーする"),
    "copy_floor_id_success": MessageLookupByLibrary.simpleMessage(
      "階層番号をクリップボードにコピー成功",
    ),
    "copy_hole_id": MessageLookupByLibrary.simpleMessage("スレッド番号をコピーする"),
    "copy_hole_id_success": MessageLookupByLibrary.simpleMessage(
      "スレッド番号をクリップボードにコピー成功",
    ),
    "copy_password": MessageLookupByLibrary.simpleMessage("パスワードをコピーする"),
    "copy_qq_group_id": MessageLookupByLibrary.simpleMessage("番号をコピーする"),
    "copy_success": MessageLookupByLibrary.simpleMessage("コピー完了"),
    "course_available_week": MessageLookupByLibrary.simpleMessage("週を開始"),
    "course_id": MessageLookupByLibrary.simpleMessage("コースコード"),
    "course_name": MessageLookupByLibrary.simpleMessage("コースタイトル"),
    "course_room_name": MessageLookupByLibrary.simpleMessage("クラスルーム"),
    "course_schedule": MessageLookupByLibrary.simpleMessage("コーススケジュール"),
    "course_teacher_name": MessageLookupByLibrary.simpleMessage("教員名"),
    "credentials_invalid": MessageLookupByLibrary.simpleMessage(
      "入力された番号が正しくありません",
    ),
    "credits": MessageLookupByLibrary.simpleMessage("クレジット"),
    "current_date": MessageLookupByLibrary.simpleMessage("現在の日付："),
    "curriculum": MessageLookupByLibrary.simpleMessage("授業評価"),
    "curriculum_average_rating": MessageLookupByLibrary.simpleMessage("平均した評価"),
    "curriculum_details": MessageLookupByLibrary.simpleMessage("授業明細"),
    "curriculum_enter_content": MessageLookupByLibrary.simpleMessage(
      "評価内容を入力してください",
    ),
    "curriculum_enter_title": MessageLookupByLibrary.simpleMessage(
      "タイトルを入力してください",
    ),
    "curriculum_ratings_assessment": MessageLookupByLibrary.simpleMessage(
      "試験の要求",
    ),
    "curriculum_ratings_assessment_words": MessageLookupByLibrary.simpleMessage(
      "とても厳格;厳格;中;気楽;とても気楽",
    ),
    "curriculum_ratings_content": MessageLookupByLibrary.simpleMessage("授業の様式"),
    "curriculum_ratings_content_words": MessageLookupByLibrary.simpleMessage(
      "ハードコア;困難;中;簡単;とても簡単",
    ),
    "curriculum_ratings_overall": MessageLookupByLibrary.simpleMessage(
      "全体的な評価",
    ),
    "curriculum_ratings_overall_words": MessageLookupByLibrary.simpleMessage(
      "とても悪い;悪い;中;良い;とても良い",
    ),
    "curriculum_ratings_workload": MessageLookupByLibrary.simpleMessage("宿題の量"),
    "curriculum_ratings_workload_words": MessageLookupByLibrary.simpleMessage(
      "巨大;多い;中;少ない;とても少ない",
    ),
    "curriculum_search_hint": MessageLookupByLibrary.simpleMessage(
      "授業名称・授業番号・教師名",
    ),
    "curriculum_select_teacher": MessageLookupByLibrary.simpleMessage(
      "教員名を選んでください",
    ),
    "curriculum_select_time": MessageLookupByLibrary.simpleMessage(
      "授業時間を選んでください",
    ),
    "curriculum_unknown_rating": MessageLookupByLibrary.simpleMessage("知らない"),
    "danxi_care": MessageLookupByLibrary.simpleMessage("旦タチームのケア"),
    "danxi_care_message": MessageLookupByLibrary.simpleMessage(
      "どうしてこの話題に触れたのかはわからないけど、もし自分を傷つけたい気持ちがあるなら、何かあったのかな？もしかしたら、生きる苦しみが死ぬことよりもずっと大きいのかもしれないし、現実では信頼できる人がいなくて、話せる相手もいないのかもしれない。そんな時は、旦タを本当の「心の穴」として使ってほしいんだ。みんなが君のことを完全に理解できるとは限らないけど、理解ってそもそもすごく難しいことだからね。それでも、自分の経験や考え、感情をシェアしてみることで、気持ちが整理されたり、意外な解決のヒントが見つかるかもしれないよ。\n\n残念ながら、旦タチームには専門的なメンタルヘルスのサポートメンバーはいないけど、この「小さなお薬箱」(https://danxi-dev.feishu.cn/docx/Trr5dEPfjoC97HxRklKccr1Ynyd?from=from_copylink)を用意したんだ。ほんの少しでもいいから、立ち止まって見てみてくれると嬉しいな。",
    ),
    "dashboard": MessageLookupByLibrary.simpleMessage("ホーム"),
    "dashboard_layout": MessageLookupByLibrary.simpleMessage("ホームページのレイアウト"),
    "data_center_unavailable_2026_0117": MessageLookupByLibrary.simpleMessage(
      "バックアップのデータセンターソースに切り替わりましたが、現在ご利用いただけません。アプリを再起動するか、キャッシュを削除してからもう一度お試しください。",
    ),
    "date_range_select": MessageLookupByLibrary.simpleMessage("日付範囲を選択"),
    "day_ago": m4,
    "default_campus": MessageLookupByLibrary.simpleMessage("現在のキャンパス"),
    "default_language": MessageLookupByLibrary.simpleMessage("言語"),
    "delete": MessageLookupByLibrary.simpleMessage("削除"),
    "delete_floor": MessageLookupByLibrary.simpleMessage("このフロアを削除"),
    "delete_image": MessageLookupByLibrary.simpleMessage("画像を削除"),
    "delete_this_tag": MessageLookupByLibrary.simpleMessage("このタグを削除しますか？"),
    "deleted": MessageLookupByLibrary.simpleMessage("削除済み"),
    "developer_announcement": m5,
    "diagnostic_information": MessageLookupByLibrary.simpleMessage("診断情報"),
    "dining_hall_crowdedness": MessageLookupByLibrary.simpleMessage("食堂の利用状況"),
    "disabled": MessageLookupByLibrary.simpleMessage("無効"),
    "divider": MessageLookupByLibrary.simpleMessage("ディバイダー"),
    "dorm_electricity": MessageLookupByLibrary.simpleMessage("寝室の余剰電力"),
    "dorm_electricity_history": MessageLookupByLibrary.simpleMessage("履歴"),
    "dorm_electricity_subtitle": m6,
    "ecard_balance": MessageLookupByLibrary.simpleMessage("キャンパスカード残高"),
    "ecard_balance_log": MessageLookupByLibrary.simpleMessage("消費記録"),
    "elementNotFound": MessageLookupByLibrary.simpleMessage(
      "ジャンプするべき元素が見つからない",
    ),
    "email": MessageLookupByLibrary.simpleMessage("メール"),
    "empty_classrooms": MessageLookupByLibrary.simpleMessage("空き教室"),
    "enable": MessageLookupByLibrary.simpleMessage("有効"),
    "enabled": MessageLookupByLibrary.simpleMessage("有効"),
    "end_reached": MessageLookupByLibrary.simpleMessage("もう最後だ"),
    "english_language": MessageLookupByLibrary.simpleMessage("英語"),
    "enhanced_auth_cancelled": MessageLookupByLibrary.simpleMessage(
      "認証が完了していません。一部の機能が一時的に利用できない場合があります。",
    ),
    "enhanced_auth_continue": MessageLookupByLibrary.simpleMessage("続行"),
    "enhanced_auth_description": MessageLookupByLibrary.simpleMessage(
      "このキャンパスサービスには二要素認証（2FA）が必要です。\nブラウザが開き、認証情報が自動入力されます。ブラウザで認証を完了してください。",
    ),
    "enhanced_auth_title": MessageLookupByLibrary.simpleMessage("二要素認証が必要です"),
    "enhanced_auth_waiting": MessageLookupByLibrary.simpleMessage(
      "ブラウザで認証を完了してください…",
    ),
    "enter_app": MessageLookupByLibrary.simpleMessage("アプリに入る"),
    "enter_captcha": MessageLookupByLibrary.simpleMessage("認証コードを入力してください"),
    "enter_forum": MessageLookupByLibrary.simpleMessage("フォーラムへの旅を始めよう"),
    "entry_permission": MessageLookupByLibrary.simpleMessage("入校権限"),
    "error_adding_exam": m7,
    "error_detail": MessageLookupByLibrary.simpleMessage("詳細情報"),
    "evening": MessageLookupByLibrary.simpleMessage("夜"),
    "exam_schedule": MessageLookupByLibrary.simpleMessage("試験と結果"),
    "exam_unavailable": MessageLookupByLibrary.simpleMessage("試験データなし"),
    "export_log_confirmation": MessageLookupByLibrary.simpleMessage(
      "エクスポートする前に確認してください。\n1. 今回のアプリ実行中に、最近エラーが発生しましたか？発生していない場合は、まずエラーを再現させてから、すぐにここに戻ってログを再エクスポートしてください。\n2. ログの共有を求めているのは信頼できる開発者ですか？ログには、あなたの個人情報（ログイン情報を含む）が含まれる可能性がありますので、共有には十分注意してください。\n\nログをエクスポートしますか？",
    ),
    "export_log_exporting": MessageLookupByLibrary.simpleMessage("ログをエクスポート中…"),
    "export_log_success": MessageLookupByLibrary.simpleMessage("エクスポートに成功しました"),
    "export_log_to_path": m8,
    "failed": MessageLookupByLibrary.simpleMessage("ロード失敗"),
    "failed_exam_no_grade": MessageLookupByLibrary.simpleMessage(
      "追試験の成績はアカデミックサービスでご確認ください",
    ),
    "fatal_error": MessageLookupByLibrary.simpleMessage("エラー"),
    "favorites": MessageLookupByLibrary.simpleMessage("お気に入り"),
    "fenglin_campus": MessageLookupByLibrary.simpleMessage("楓林キャンパス"),
    "filtering_by_tag": m9,
    "fold": MessageLookupByLibrary.simpleMessage("フォールド"),
    "fold_floor": MessageLookupByLibrary.simpleMessage("この返信をフォールドする"),
    "folded": MessageLookupByLibrary.simpleMessage(
      "このポストはフォールドしています。クリックすると表示されます。",
    ),
    "follow_system_palette": MessageLookupByLibrary.simpleMessage(
      "システムカラーパレットに従う",
    ),
    "follow_system_palette_description": MessageLookupByLibrary.simpleMessage(
      "壁紙に基づくAndroid Material Youの動的カラーを使用する",
    ),
    "forgot_password": MessageLookupByLibrary.simpleMessage("パスワードを忘れた"),
    "format_exception": MessageLookupByLibrary.simpleMessage(
      "パースエラーです。 キャンパスサービスにアクセスしている場合、通常、サーバーへのログインに失敗していることが原因です。 詳細情報をご覧ください。",
    ),
    "formula": MessageLookupByLibrary.simpleMessage("[フォーミュラ]"),
    "forum": MessageLookupByLibrary.simpleMessage("フォーラム"),
    "forum_clean_mode": MessageLookupByLibrary.simpleMessage("クリーンモード"),
    "forum_clean_mode_description": MessageLookupByLibrary.simpleMessage(
      "フォーラムで非友好的な絵文字をフィルタリング",
    ),
    "forum_clean_mode_detail": MessageLookupByLibrary.simpleMessage(
      "クリーンモードをオンにすると、フォーラムで広く「不親切」とされる絵文字表現がフィルタリングされるようになります。",
    ),
    "forum_hidden_tags": MessageLookupByLibrary.simpleMessage("タグ ブラックリスト"),
    "forum_hidden_tags_description": MessageLookupByLibrary.simpleMessage(
      "特定のタグを含むポストを非表示にする",
    ),
    "forum_hidden_tags_title": MessageLookupByLibrary.simpleMessage("ブラックリスト"),
    "forum_message": MessageLookupByLibrary.simpleMessage("メッセージ"),
    "forum_nsfw_behavior": MessageLookupByLibrary.simpleMessage("NSFW 内容"),
    "forum_post_enter_content": MessageLookupByLibrary.simpleMessage("パブリッシュ"),
    "forum_show_banner": MessageLookupByLibrary.simpleMessage("活動を表示する"),
    "forum_show_banner_description": MessageLookupByLibrary.simpleMessage(
      "閲覧に支障のない範囲で、学内活動のお知らせをフォーラムのページ上部に表示します",
    ),
    "forum_user_id": m10,
    "free_select": MessageLookupByLibrary.simpleMessage("選択でコピー"),
    "fsy2001_description": MessageLookupByLibrary.simpleMessage("旦タの開発者"),
    "fudan_aao_notices": MessageLookupByLibrary.simpleMessage("教務課のお知らせ"),
    "fudan_api_exception": MessageLookupByLibrary.simpleMessage(
      "校内サービスAPI解析できません",
    ),
    "fudan_library_crowdedness": MessageLookupByLibrary.simpleMessage(
      "図書館の利用状況",
    ),
    "fudan_postgraduate_student": MessageLookupByLibrary.simpleMessage(
      "復旦大学院生 UIS ログイン",
    ),
    "fudan_qr_code": MessageLookupByLibrary.simpleMessage("復旦ライフコード"),
    "fudan_staff": MessageLookupByLibrary.simpleMessage("復旦教職員ログイン"),
    "fudan_uis_email_login": MessageLookupByLibrary.simpleMessage(
      "UISメールログイン/登録",
    ),
    "get_started": MessageLookupByLibrary.simpleMessage("始める"),
    "good_afternoon": MessageLookupByLibrary.simpleMessage("午後はレジャーですね"),
    "good_morning": MessageLookupByLibrary.simpleMessage("一日の中で重要なのは朝である"),
    "good_night": MessageLookupByLibrary.simpleMessage("こんばんは～"),
    "good_noon": MessageLookupByLibrary.simpleMessage("もうすぐお昼です"),
    "gpa": MessageLookupByLibrary.simpleMessage("成績点"),
    "handan_campus": MessageLookupByLibrary.simpleMessage("邯鄲キャンパス"),
    "haptic_feedback": MessageLookupByLibrary.simpleMessage("触覚フィードバック"),
    "haptic_feedback_description": MessageLookupByLibrary.simpleMessage(
      "操作時に振動フィードバックを提供",
    ),
    "has_stop_words": m11,
    "has_stop_words_title": MessageLookupByLibrary.simpleMessage("不適切な言葉"),
    "hasbai_description": MessageLookupByLibrary.simpleMessage(
      "フォーラムの創設者 & 開発者",
    ),
    "hide": MessageLookupByLibrary.simpleMessage("隠す"),
    "hide_hole": MessageLookupByLibrary.simpleMessage("このポストを隠す"),
    "hide_hole_confirm": MessageLookupByLibrary.simpleMessage(
      "スレッドを隠しますか？一度隠すと、アプリを再インストールしない限り、このスレッドは投稿リストに表示されなくなります。",
    ),
    "hide_hole_success": MessageLookupByLibrary.simpleMessage(
      "スレッドを隠しました。リフレッシュ後に効果が現れます。",
    ),
    "hide_notification_description": MessageLookupByLibrary.simpleMessage(
      "この通知を永久に隠しますか？設定で隠されたすべての通知をいつでも表示できます。",
    ),
    "hide_post_confirm": MessageLookupByLibrary.simpleMessage(
      "隠しますか？左上隅のボタンで隠されたものを再表示にするのは可能です",
    ),
    "hide_post_success": MessageLookupByLibrary.simpleMessage(
      "成功に隠された。再表示するには、設定で回复して",
    ),
    "high_contrast_color_description": MessageLookupByLibrary.simpleMessage(
      "ハイコントラストカラー",
    ),
    "history": MessageLookupByLibrary.simpleMessage("履歴記録"),
    "hole_force_deleted": MessageLookupByLibrary.simpleMessage("削除され"),
    "hole_frozen": MessageLookupByLibrary.simpleMessage("凍結"),
    "hole_hidden": MessageLookupByLibrary.simpleMessage("ヒドゥン"),
    "hole_locked": MessageLookupByLibrary.simpleMessage("ロック"),
    "holiday": MessageLookupByLibrary.simpleMessage("休息日"),
    "hour_ago": m12,
    "hydrogenc_description": MessageLookupByLibrary.simpleMessage("旦タの開発者"),
    "i_have_read_and_agreed": m13,
    "i_see": MessageLookupByLibrary.simpleMessage("はい"),
    "identity_service": MessageLookupByLibrary.simpleMessage(
      "統一アイデンティティ認証サービス",
    ),
    "image": MessageLookupByLibrary.simpleMessage("写真"),
    "image_save_failed": MessageLookupByLibrary.simpleMessage(
      "画像の保存に失敗しました、権限設定を確認してください",
    ),
    "image_save_success": MessageLookupByLibrary.simpleMessage(
      "画像がアルバムに保存されました",
    ),
    "image_tag": MessageLookupByLibrary.simpleMessage("[写真]"),
    "input_reason": MessageLookupByLibrary.simpleMessage("入力（空白のまま復元）"),
    "input_your_email": MessageLookupByLibrary.simpleMessage(
      "メールアドレスを入力してください",
    ),
    "input_your_email_password": MessageLookupByLibrary.simpleMessage(
      "旦タのアカウント/パスワードを入力してください",
    ),
    "input_your_email_secure_code": MessageLookupByLibrary.simpleMessage(
      "メール認証コードを入力してください",
    ),
    "invalidUri": MessageLookupByLibrary.simpleMessage("無効な Uri"),
    "invalid_course_info": MessageLookupByLibrary.simpleMessage(
      "コーススロットに関する有効な情報を提供してください",
    ),
    "ivanfei_description": MessageLookupByLibrary.simpleMessage(
      "フォーラムのフロントエンド開発者",
    ),
    "japanese_language": MessageLookupByLibrary.simpleMessage("日本語"),
    "jiangwan_campus": MessageLookupByLibrary.simpleMessage("江湾キャンパス"),
    "jingyijun_description": MessageLookupByLibrary.simpleMessage(
      "フォーラムのバックエンド開発者",
    ),
    "jump_to_hole": MessageLookupByLibrary.simpleMessage("ロケート"),
    "lan_connection_issue_1": MessageLookupByLibrary.simpleMessage(
      "キャンパスのイントラネットへの接続障害",
    ),
    "lan_connection_issue_1_action": MessageLookupByLibrary.simpleMessage(
      "キャンパス VPN",
    ),
    "lan_connection_issue_1_description": MessageLookupByLibrary.simpleMessage(
      "復旦内部ネットに接続できず、一部の機能は利用できない。但し、「WebVPN を自動的に使う」が有効にすると、直接に訪問することもまだできます。\n\nそれが機能しない場合は、キャンパス VPN (Easy Connect) や Eduroam ホットスポットなどをリンクしてイントラネットリソースにアクセスすることができます。",
    ),
    "lan_connection_issue_1_guide_content": MessageLookupByLibrary.simpleMessage(
      "たった3ステップ:\n\n1. [ここをクリックして](https://stuvpn.fudan.edu.cn/com/installClient.html#auto-common)VPNダウンロードページを開き、対応するプラットフォームを選択する。\n2. インストールされたソフトウェアを開く、URL欄にstuvpn.fudan.edu.cnを入力して、OKをクリックする。\n3. ログイン画面がポップアップするので、UISアカウントを入力し、Connectをクリックする。\n\nそうすれば、旦タのすべての機能を普通に使うことができます！",
    ),
    "lan_connection_issue_1_guide_title": MessageLookupByLibrary.simpleMessage(
      "キャンパスVPNの使用方法",
    ),
    "last_15_days": MessageLookupByLibrary.simpleMessage("過去15日間"),
    "last_30_days": MessageLookupByLibrary.simpleMessage("過去30日間"),
    "last_7_days": MessageLookupByLibrary.simpleMessage("過去7日間"),
    "last_created": MessageLookupByLibrary.simpleMessage("最近発表"),
    "last_replied": MessageLookupByLibrary.simpleMessage("最近返信"),
    "last_updated": m14,
    "late_night": MessageLookupByLibrary.simpleMessage("披星戴月，不负韶华"),
    "latest_announcement": MessageLookupByLibrary.simpleMessage("最新お知らせ"),
    "latest_reply": m15,
    "latex_description": MessageLookupByLibrary.simpleMessage(
      "LaTeXパーサーが有効です。LaTeXの構文を使ってドル記号「\$」の間に直接数式を書くことができます。「LaTeXが何であるか」分からない場合は、 https://liam.page/2014/09/08/latex-introduction/ を参照してください。",
    ),
    "latex_enabled": MessageLookupByLibrary.simpleMessage("LaTeX 有効"),
    "level": m16,
    "like": m17,
    "liked": m18,
    "limited_mode_description": MessageLookupByLibrary.simpleMessage(
      "復旦イントラネットに接続できない、予備のデータソースを使用している、学期ごとの試験データと成績点と表示できない。",
    ),
    "limited_mode_title": MessageLookupByLibrary.simpleMessage("アクセス制限"),
    "link": MessageLookupByLibrary.simpleMessage("リンク"),
    "list_my_posts": MessageLookupByLibrary.simpleMessage("発表したポストを見る"),
    "list_my_punishments": MessageLookupByLibrary.simpleMessage("ペナルティ歴史を見る"),
    "list_my_replies": MessageLookupByLibrary.simpleMessage("発表した返信を見る"),
    "list_view_history": MessageLookupByLibrary.simpleMessage("閲覧履歴を見る (ローカル)"),
    "loading": MessageLookupByLibrary.simpleMessage("ローディング..."),
    "loading_qr_code": MessageLookupByLibrary.simpleMessage(
      "復旦ライフコードをロード...\n復旦のサーバーによっては、5～15秒かかる場合があります。",
    ),
    "logged_in": MessageLookupByLibrary.simpleMessage("ログイン済み"),
    "login": MessageLookupByLibrary.simpleMessage("ログイン"),
    "login_agreement": MessageLookupByLibrary.simpleMessage(
      "ログインすることで同意したものとみなされます",
    ),
    "login_by_email_password": MessageLookupByLibrary.simpleMessage(
      "メールアドレスとパスワードでログイン",
    ),
    "login_danta_account": MessageLookupByLibrary.simpleMessage("旦タアカウントログイン"),
    "login_danta_community": MessageLookupByLibrary.simpleMessage(
      "旦タコミュニティとサービス",
    ),
    "login_from_forum_page": MessageLookupByLibrary.simpleMessage(
      "フォーラムのページでログインしてください",
    ),
    "login_issue_1": MessageLookupByLibrary.simpleMessage(
      "ログインに失敗し、旦タはUISログインのことができませんでした。\nこのエラーは、連続して何度もログインに失敗し、認証コードが必要なることが原因である可能性が高いです。\nブラウザーで手動でログインを完了し、アプリを開き直すと、アプリが適切に処理する必要があります。\n\nそれでも問題が解決しない場合は、再度ログインをお試しください。",
    ),
    "login_issue_1_action": MessageLookupByLibrary.simpleMessage("ログインページを開く"),
    "login_issue_2": MessageLookupByLibrary.simpleMessage(
      "今学期の関連情報をサーバから正しく取得できませんでしたので、再試行してください。\nスキップすると、時間割に関する機能に日付上の問題が生じる可能性がある。",
    ),
    "login_postgraduate": MessageLookupByLibrary.simpleMessage("大学院生ログイン"),
    "login_problem": m19,
    "login_uis": MessageLookupByLibrary.simpleMessage("復旦UISログイン"),
    "login_uis_description": MessageLookupByLibrary.simpleMessage(
      "パスワードは、復旦UISのログインにのみ使用されます。",
    ),
    "login_uis_dialog_title": MessageLookupByLibrary.simpleMessage(
      "復旦学部生UISログイン",
    ),
    "login_uis_pwd": MessageLookupByLibrary.simpleMessage("暗証番号"),
    "login_uis_uid": MessageLookupByLibrary.simpleMessage("学生番号"),
    "login_undergraduate": MessageLookupByLibrary.simpleMessage("学部生ログイン"),
    "logining": MessageLookupByLibrary.simpleMessage("ログイン中..."),
    "logout": MessageLookupByLibrary.simpleMessage("ログアウト"),
    "logout_forum": MessageLookupByLibrary.simpleMessage("フォーラムをログアウトする"),
    "logout_question_prompt": MessageLookupByLibrary.simpleMessage(
      "ローカルに保存されているデータはすべて削除されます。",
    ),
    "logout_question_prompt_title": MessageLookupByLibrary.simpleMessage(
      "ログアウトしますか。",
    ),
    "major": MessageLookupByLibrary.simpleMessage("専門"),
    "mark_as_dealt": MessageLookupByLibrary.simpleMessage("対処済みにする"),
    "markdown_description": MessageLookupByLibrary.simpleMessage(
      "Markdownパーサーが有効です。 Markdownを使って直接書き込みができます。「Markdownが何であるか」分からない場合は、 https://www.runoob.com/markdown/md-tutorial.html を参照してください。",
    ),
    "markdown_enabled": MessageLookupByLibrary.simpleMessage("Markdown 有効"),
    "messages": MessageLookupByLibrary.simpleMessage("メッセージ"),
    "minute_ago": m20,
    "modified": MessageLookupByLibrary.simpleMessage("モディファイド"),
    "modify": MessageLookupByLibrary.simpleMessage("モディファイ"),
    "modify_floor": MessageLookupByLibrary.simpleMessage("このフロア変更"),
    "modify_password": MessageLookupByLibrary.simpleMessage("パスワード変更"),
    "modify_tag_division": MessageLookupByLibrary.simpleMessage("タグ/ディビジョン変更"),
    "modify_to": m21,
    "modify_to_floor": m22,
    "moment_ago": MessageLookupByLibrary.simpleMessage("たった今"),
    "morning": MessageLookupByLibrary.simpleMessage("午前"),
    "most_least_crowded_canteen": m23,
    "multiple_select_mode_enter": MessageLookupByLibrary.simpleMessage(
      "进入多选模式",
    ),
    "multiple_select_mode_exit": MessageLookupByLibrary.simpleMessage("退出多选模式"),
    "my_email_not_in_list": MessageLookupByLibrary.simpleMessage(
      "メールがリストにありません",
    ),
    "name": MessageLookupByLibrary.simpleMessage("名前"),
    "new_post": MessageLookupByLibrary.simpleMessage("新しいポストを出す"),
    "new_shortcut_card": MessageLookupByLibrary.simpleMessage("クイックカード追加"),
    "new_shortcut_description": MessageLookupByLibrary.simpleMessage(
      "カードをクリックすると、指定したウェブページが表示されます",
    ),
    "new_update_description": m24,
    "new_update_title": MessageLookupByLibrary.simpleMessage("更新情報"),
    "next": MessageLookupByLibrary.simpleMessage("次へ"),
    "next_course_is": m25,
    "next_course_none": MessageLookupByLibrary.simpleMessage("今日の授業はすべて終了しました"),
    "next_course_setup": MessageLookupByLibrary.simpleMessage("スケジュールで設定後、更新"),
    "next_question": MessageLookupByLibrary.simpleMessage("次へ"),
    "no_course_review": MessageLookupByLibrary.simpleMessage("この授業は評価がありません"),
    "no_data": MessageLookupByLibrary.simpleMessage("データなし"),
    "no_data_error": MessageLookupByLibrary.simpleMessage("データなし"),
    "no_favorites": MessageLookupByLibrary.simpleMessage("お気に入りなし"),
    "no_matching_bus": MessageLookupByLibrary.simpleMessage(
      "あなたのキャンパスにはスクールバスがありません。",
    ),
    "no_subscriptions": MessageLookupByLibrary.simpleMessage("購読なし"),
    "not_fudan_student": MessageLookupByLibrary.simpleMessage(
      "復旦大学以外の学生は、スケジュール機能をサポートしていません。",
    ),
    "not_logged_in": MessageLookupByLibrary.simpleMessage("未ログイン"),
    "notification_mention": MessageLookupByLibrary.simpleMessage(
      "あなたのポストが引用されました",
    ),
    "notification_mention_s": MessageLookupByLibrary.simpleMessage("引用"),
    "notification_reported": MessageLookupByLibrary.simpleMessage(
      "あなたのポストは報告のために処理されました",
    ),
    "notification_reported_s": MessageLookupByLibrary.simpleMessage("報告"),
    "notification_settings": MessageLookupByLibrary.simpleMessage("プッシュ通知"),
    "notification_subscription": MessageLookupByLibrary.simpleMessage(
      "購読中のスレッドに新しい返信があります",
    ),
    "notification_subscription_s": MessageLookupByLibrary.simpleMessage("購読"),
    "obtaining_information": MessageLookupByLibrary.simpleMessage("情報取得中……"),
    "ok": MessageLookupByLibrary.simpleMessage("はい"),
    "older_announcement": MessageLookupByLibrary.simpleMessage("過去お知らせ"),
    "only_show_dz": MessageLookupByLibrary.simpleMessage("Po主だけを表示"),
    "open_source_software_licenses": MessageLookupByLibrary.simpleMessage(
      "オープンソースライセンス",
    ),
    "operation_failed": MessageLookupByLibrary.simpleMessage("操作失敗"),
    "operation_successful": MessageLookupByLibrary.simpleMessage(
      "操作が正常に終了しました",
    ),
    "other_types_exam": MessageLookupByLibrary.simpleMessage("論文と他の試験"),
    "our_email_is": m26,
    "out_of_dining_time": MessageLookupByLibrary.simpleMessage("食事の時間ではありません"),
    "password": MessageLookupByLibrary.simpleMessage("暗証番号"),
    "pe_exercises": MessageLookupByLibrary.simpleMessage("運動記録"),
    "percentile": MessageLookupByLibrary.simpleMessage("パーセンタイル"),
    "pin_unpin_hole": MessageLookupByLibrary.simpleMessage("スレッドをトップ/アントップ"),
    "pinned": MessageLookupByLibrary.simpleMessage("固定"),
    "post_does_not_exist": MessageLookupByLibrary.simpleMessage(
      "そのようなポストはありません",
    ),
    "post_has_no_tags": MessageLookupByLibrary.simpleMessage(
      "タグなしでのポストは推奨していませんが、送り続けなければならないのでしょうか？",
    ),
    "post_has_no_tags_title": MessageLookupByLibrary.simpleMessage("タグなし"),
    "post_time": m27,
    "postgraduates_need_login": MessageLookupByLibrary.simpleMessage(
      "ここにクリックすると、クラススケジュールシステムにログインする。",
    ),
    "posting": MessageLookupByLibrary.simpleMessage("ポストを発表中..."),
    "prev_question": MessageLookupByLibrary.simpleMessage("前へ"),
    "preview": MessageLookupByLibrary.simpleMessage("プレビュー"),
    "privacy_policy": MessageLookupByLibrary.simpleMessage("プライバシーポリシーと利用規約"),
    "project_page": MessageLookupByLibrary.simpleMessage("プロジェクトページ"),
    "proxy_setting": MessageLookupByLibrary.simpleMessage("プロキシ設定"),
    "proxy_setting_add_new": MessageLookupByLibrary.simpleMessage("新しいプロキシを追加"),
    "proxy_setting_already_exists": MessageLookupByLibrary.simpleMessage(
      "そのプロキシは既に存在します",
    ),
    "proxy_setting_do_not_use": MessageLookupByLibrary.simpleMessage(
      "プロキシを使用しない",
    ),
    "proxy_setting_input_hint": MessageLookupByLibrary.simpleMessage(
      "例：127.0.0.1:1234（空白のままにしてプロキシを無効にする）",
    ),
    "proxy_setting_input_title": MessageLookupByLibrary.simpleMessage(
      "HTTPプロキシアドレスを入力",
    ),
    "proxy_setting_remove": MessageLookupByLibrary.simpleMessage("プロキシを削除"),
    "proxy_setting_unset": MessageLookupByLibrary.simpleMessage("未設定"),
    "push_notification_reg_failed": MessageLookupByLibrary.simpleMessage(
      "プッシュ通知の登録に失敗しました",
    ),
    "push_notification_reg_failed_des": m28,
    "quiz_completed": MessageLookupByLibrary.simpleMessage(
      "コミュニティー公約の学習は完了しました。フォーラムを利用する時は、この約束を忘れずに遵守してください",
    ),
    "quiz_has_errors": m29,
    "quiz_not_answered": MessageLookupByLibrary.simpleMessage(
      "貴方様はコミュニティー公約をまだ読んでいないので、下のリンクを押して読んでください。それから、小さな試験を受けてください。全部の質問が正解したと、フォーラムを利用できるようになる",
    ),
    "quote": MessageLookupByLibrary.simpleMessage("引用"),
    "rank": MessageLookupByLibrary.simpleMessage("ランキング"),
    "rate": MessageLookupByLibrary.simpleMessage("評価"),
    "re_login": MessageLookupByLibrary.simpleMessage("再ログイン"),
    "read_announcements": MessageLookupByLibrary.simpleMessage("お知らせを読む"),
    "reason_report_post": m30,
    "recommended_tags": MessageLookupByLibrary.simpleMessage("おすすめタグ"),
    "recommended_tags_availibity": MessageLookupByLibrary.simpleMessage(
      "投稿時にタグをアドバイスする",
    ),
    "recommended_tags_description": MessageLookupByLibrary.simpleMessage(
      "警告：これは実験的な機能です。推薦された内容は正しくないか不適切である可能性があり、あくまで参考用です。不適切な内容を見つけた場合は、dev@danta.tech に報告してください。\n\nすべてのデータはローカルで処理され、サーバーにアップロードされることはありません。\n\nモデルバージョン：0.1a (CoreML)\n\nシステム要件：iOS 14.0以降",
    ),
    "redo_incorrect_questions": MessageLookupByLibrary.simpleMessage("再試験"),
    "refresh": MessageLookupByLibrary.simpleMessage("更新"),
    "registration_succeed": MessageLookupByLibrary.simpleMessage("登録成功"),
    "remove_favorite_hole_confirmation": MessageLookupByLibrary.simpleMessage(
      "本当にこのお気に入りを削除しますか？",
    ),
    "remove_subscribed_hole_confirmation": MessageLookupByLibrary.simpleMessage(
      "本当にこの購読を削除しますか？",
    ),
    "reply_failed": MessageLookupByLibrary.simpleMessage("返信失败"),
    "reply_to": m31,
    "reply_to_floor": m32,
    "report": MessageLookupByLibrary.simpleMessage("報告"),
    "report_failed": MessageLookupByLibrary.simpleMessage("報告失敗"),
    "report_success": MessageLookupByLibrary.simpleMessage(
      "報告が完了しました。フォーラムの良い環境の維持に貢献してくれてありがとうございます。",
    ),
    "reports": MessageLookupByLibrary.simpleMessage("レポート"),
    "request_success": MessageLookupByLibrary.simpleMessage("リクエスト成功。"),
    "require_login": MessageLookupByLibrary.simpleMessage(
      "この機能を使用するには、ログインの必要があります。",
    ),
    "reset": MessageLookupByLibrary.simpleMessage("リセット"),
    "reset_layout": MessageLookupByLibrary.simpleMessage("レイアウトをリセットする"),
    "response_error": MessageLookupByLibrary.simpleMessage("サーバーがエラーコードを返した："),
    "restore_hidden_confirm": MessageLookupByLibrary.simpleMessage(
      "隠していたものを全部復元しますか？",
    ),
    "retry": MessageLookupByLibrary.simpleMessage("リトライ"),
    "save_your_information": MessageLookupByLibrary.simpleMessage(
      "以下の情報は大切に保管してください",
    ),
    "school_bus": MessageLookupByLibrary.simpleMessage("スクールバス時刻表"),
    "school_bus_not_showing_all": m33,
    "school_bus_showing_all": MessageLookupByLibrary.simpleMessage(
      "スクールバスの時刻はすべて表示しています",
    ),
    "school_bus_tap_to_not_show_all": m34,
    "school_bus_tap_to_show_all": MessageLookupByLibrary.simpleMessage(
      "クリックすると全て表示されます",
    ),
    "screenshot_warning": MessageLookupByLibrary.simpleMessage(
      "フォーラムの情報のセキュリティと他のユーザーのプライバシーを保護するために、スクリーンショットを他のプラットフォームに送信しないようにお願いします。ご協力ありがとうございました。",
    ),
    "screenshot_warning_title": MessageLookupByLibrary.simpleMessage(
      "スクリーンショットを検知",
    ),
    "scroll_to_end": MessageLookupByLibrary.simpleMessage("底へ行く"),
    "search": MessageLookupByLibrary.simpleMessage("検索"),
    "search_by_floor_tip": m35,
    "search_by_pid_tip": m36,
    "search_by_tag_tip": m37,
    "search_by_text_accurate_tip": m38,
    "search_by_text_tip": m39,
    "search_hint": MessageLookupByLibrary.simpleMessage("検索内容・#PID"),
    "search_result": MessageLookupByLibrary.simpleMessage("検索結果"),
    "season_autumn": MessageLookupByLibrary.simpleMessage("秋"),
    "season_spring": MessageLookupByLibrary.simpleMessage("春"),
    "season_summer": MessageLookupByLibrary.simpleMessage("夏"),
    "season_winter": MessageLookupByLibrary.simpleMessage("冬"),
    "seats": m40,
    "second_ago": m41,
    "secure_code": MessageLookupByLibrary.simpleMessage("認証コード"),
    "secure_verification": MessageLookupByLibrary.simpleMessage("セキュリティの検証"),
    "secure_verification_description": MessageLookupByLibrary.simpleMessage(
      "認証コードをメールでお送りしましたので、コードを入力してください。",
    ),
    "select_all": MessageLookupByLibrary.simpleMessage("全選択"),
    "select_date_range_far_past": MessageLookupByLibrary.simpleMessage("遠い過去"),
    "select_date_range_from": MessageLookupByLibrary.simpleMessage("開始："),
    "select_date_range_invalid_range": MessageLookupByLibrary.simpleMessage(
      "開始日は終了日より前である必要があります",
    ),
    "select_date_range_now": MessageLookupByLibrary.simpleMessage("現在"),
    "select_date_range_to": MessageLookupByLibrary.simpleMessage("終了："),
    "select_semester": MessageLookupByLibrary.simpleMessage("スケジュールに表示する学期"),
    "select_tags": MessageLookupByLibrary.simpleMessage("タグを選択"),
    "semester": m42,
    "semester_start_at_monday": MessageLookupByLibrary.simpleMessage(
      "学期開始日は通常第1週の月曜日ですが、選択された日付が月曜日でないようです。 本当にそのままで設定するのですか？",
    ),
    "semester_start_date": MessageLookupByLibrary.simpleMessage("学期開始日"),
    "send_email": MessageLookupByLibrary.simpleMessage("送信する"),
    "set_password": MessageLookupByLibrary.simpleMessage("パスワード設定"),
    "set_your_danxi_password": MessageLookupByLibrary.simpleMessage(
      "旦タのアカウントのパスワードを設定してください",
    ),
    "settings": MessageLookupByLibrary.simpleMessage("設定"),
    "share": MessageLookupByLibrary.simpleMessage("シェア"),
    "shareFloorSuccess": MessageLookupByLibrary.simpleMessage(
      "分け合うのは成功! クリップボードを見て",
    ),
    "shareHoleSuccess": MessageLookupByLibrary.simpleMessage(
      "分け合うのは成功! クリップボードを見て",
    ),
    "share_as_ics": MessageLookupByLibrary.simpleMessage("ICSとしてエクスポート"),
    "share_floor": MessageLookupByLibrary.simpleMessage("テキストで階層を分け合う"),
    "share_hole": MessageLookupByLibrary.simpleMessage("テキストでポストを分け合う"),
    "share_hole_title": MessageLookupByLibrary.simpleMessage("分け合う階層を選択する"),
    "show": MessageLookupByLibrary.simpleMessage("表示"),
    "show_all": MessageLookupByLibrary.simpleMessage("すべて表示"),
    "show_all_replies": MessageLookupByLibrary.simpleMessage("すべて表示"),
    "show_hidden_notifications": MessageLookupByLibrary.simpleMessage(
      "隠された通知を表示",
    ),
    "show_hidden_notifications_description":
        MessageLookupByLibrary.simpleMessage("クリックしてすべての隠された通知を復元する"),
    "show_this_person": MessageLookupByLibrary.simpleMessage("この人だけ"),
    "show_unread": MessageLookupByLibrary.simpleMessage("未読を表示"),
    "silence_detail": MessageLookupByLibrary.simpleMessage(
      "コミュニティルール違反のため、発言を禁止されました。\n\nこの判断に誤りがあると思う場合は、私たちにご連絡いただき、解決してください。。",
    ),
    "silence_notice": MessageLookupByLibrary.simpleMessage("ポスト権限なし"),
    "simplified_chinese_language": MessageLookupByLibrary.simpleMessage(
      "簡体字中国語",
    ),
    "singularity_s0_description": MessageLookupByLibrary.simpleMessage(
      "旦タの開発者 & フォーラムのバックエンド開発者",
    ),
    "sjtu_student": MessageLookupByLibrary.simpleMessage("上海交通大学オフキャンパスログイン"),
    "skip": MessageLookupByLibrary.simpleMessage("スキップ"),
    "sort_order": MessageLookupByLibrary.simpleMessage("ソート順"),
    "start_quiz": MessageLookupByLibrary.simpleMessage("試験を受ける"),
    "sticker": MessageLookupByLibrary.simpleMessage("ステッカー"),
    "sticker_tag": MessageLookupByLibrary.simpleMessage("[ステッカー]"),
    "submit": MessageLookupByLibrary.simpleMessage("送信"),
    "subscriptions": MessageLookupByLibrary.simpleMessage("購読"),
    "tag_least_crowded": MessageLookupByLibrary.simpleMessage("最空闲"),
    "tag_most_crowded": MessageLookupByLibrary.simpleMessage("最混雑"),
    "tap_to_show_preview": MessageLookupByLibrary.simpleMessage(
      "クリックするとプレビューが表示されます",
    ),
    "tap_to_view": MessageLookupByLibrary.simpleMessage("クリックで表示"),
    "terms_and_conditions_content": MessageLookupByLibrary.simpleMessage(
      "ログインすることで、以下を読んでから同意したものとみなされます：",
    ),
    "terms_and_conditions_content_end": MessageLookupByLibrary.simpleMessage(
      "。",
    ),
    "terms_and_conditions_title": MessageLookupByLibrary.simpleMessage("法律"),
    "terms_and_privacy": MessageLookupByLibrary.simpleMessage(
      "サービス利用規約とプライバシーポリシー",
    ),
    "theme": MessageLookupByLibrary.simpleMessage("テーマ"),
    "theme_color": MessageLookupByLibrary.simpleMessage("テーマ色"),
    "theme_color_description": MessageLookupByLibrary.simpleMessage(
      "旦タのテーマ色を設定する",
    ),
    "theme_color_description_detail": MessageLookupByLibrary.simpleMessage(
      "テーマカラーを切り替えるには、プリセットカラーまたはカスタムカラーを選択します",
    ),
    "theme_type": MessageLookupByLibrary.simpleMessage("テーマタイプ"),
    "theme_type_dark": MessageLookupByLibrary.simpleMessage("ダーク"),
    "theme_type_light": MessageLookupByLibrary.simpleMessage("ライト"),
    "theme_type_system": MessageLookupByLibrary.simpleMessage("システム"),
    "timetable": MessageLookupByLibrary.simpleMessage("スケジュール"),
    "tip_that_danxi_is_not_fdu": MessageLookupByLibrary.simpleMessage(
      "注意：旦タのアカウントは、復旦大学メールやUISアカウントではありません。",
    ),
    "today_course": MessageLookupByLibrary.simpleMessage("今日の授業"),
    "traditional_chinese_language": MessageLookupByLibrary.simpleMessage(
      "繁体字中国語",
    ),
    "unable_to_access_url": MessageLookupByLibrary.simpleMessage(
      "テスト接続失敗\nこのページにアクセスできません。URLをご確認ください。",
    ),
    "unable_to_find_quote": MessageLookupByLibrary.simpleMessage(
      "引用されたポストが見つかりませんでした",
    ),
    "unauthorized": MessageLookupByLibrary.simpleMessage("無許可"),
    "unavailable": MessageLookupByLibrary.simpleMessage("使用できません"),
    "under_maintenance": MessageLookupByLibrary.simpleMessage(
      "復旦内部ネットに接続できません。\nキャンパスVPN(Easy Connect)をリンクしてイントラネットにアクセスすることができます。",
    ),
    "unknown_error": MessageLookupByLibrary.simpleMessage("不明なエラー"),
    "unknown_start_date": m43,
    "unmovable_widget": MessageLookupByLibrary.simpleMessage("ウィジェットは不動である"),
    "unsupported": MessageLookupByLibrary.simpleMessage("この装置はサポートされていません"),
    "update_now": MessageLookupByLibrary.simpleMessage("更新"),
    "uploading_image": MessageLookupByLibrary.simpleMessage("写真をアップロード中..."),
    "uploading_image_failed": MessageLookupByLibrary.simpleMessage(
      "画像アップに失敗しましたので、ネット接続をチェックしてください",
    ),
    "use_webvpn_description": MessageLookupByLibrary.simpleMessage(
      "有効時、一部の機能はFudan LANなしで、直接に連接するのができます (再起動が必要)",
    ),
    "use_webvpn_title": MessageLookupByLibrary.simpleMessage("WebVPN を自動的に使う"),
    "version": MessageLookupByLibrary.simpleMessage("バージョン"),
    "view_count": m44,
    "view_history": MessageLookupByLibrary.simpleMessage("查看修改历史"),
    "view_ossl": MessageLookupByLibrary.simpleMessage(
      "このアプリは、多くのオープンソースソフトウェアがなければ作れなかったものです。",
    ),
    "w568w_description": MessageLookupByLibrary.simpleMessage("旦タの創設者 & 開発者"),
    "warning": MessageLookupByLibrary.simpleMessage("警告"),
    "weak_password": MessageLookupByLibrary.simpleMessage(
      "ログインに失敗しました。不明なエラー\n注意：UISにログインする時、いつも「弱いパスワード」が表示される場合は、パスワードを変更して再試行してください。",
    ),
    "week": m45,
    "weekday": MessageLookupByLibrary.simpleMessage("営業日"),
    "welcome": m46,
    "welcome_1": MessageLookupByLibrary.simpleMessage("常に最新情報を提供"),
    "welcome_1s": MessageLookupByLibrary.simpleMessage(
      "フォローしたポストが更新されると、プッシュ通知でお知らせします",
    ),
    "welcome_2": MessageLookupByLibrary.simpleMessage("区分のスペースでの議論"),
    "welcome_2s": MessageLookupByLibrary.simpleMessage(
      "専用スペースでより集中したディスカッションします",
    ),
    "welcome_3": MessageLookupByLibrary.simpleMessage("簡単に編集"),
    "welcome_3s": MessageLookupByLibrary.simpleMessage(
      "LaTeXとMarkdownをポストで使用することができます。",
    ),
    "welcome_back": MessageLookupByLibrary.simpleMessage("おかえりなさい"),
    "welcome_feature": MessageLookupByLibrary.simpleMessage("こんにちは"),
    "welcome_to_forum": MessageLookupByLibrary.simpleMessage("フォーラムへようこそ"),
    "windows_auto_start_description": MessageLookupByLibrary.simpleMessage(
      "起動時に自動的にアプリが開く",
    ),
    "windows_auto_start_title": MessageLookupByLibrary.simpleMessage("自動スタート"),
    "windows_auto_start_wait_dialog_message": MessageLookupByLibrary.simpleMessage(
      "WindowsのUAC管理のポップアップウィンドウを見ただけのはずです。\n許可した後、下の「はい」をクリックして、設定を完了してください。",
    ),
    "windows_auto_start_wait_dialog_title":
        MessageLookupByLibrary.simpleMessage("認証ウィンドウを待ちます"),
    "your_gpa": MessageLookupByLibrary.simpleMessage("あなたの成績点"),
    "your_gpa_subtitle": m47,
    "zhangjiang_campus": MessageLookupByLibrary.simpleMessage("張江キャンパス"),
  };
}
