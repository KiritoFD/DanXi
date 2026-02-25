// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Forum Frontend Developer`
  String get Dest1n1_description {
    return Intl.message(
      'Forum Frontend Developer',
      name: 'Dest1n1_description',
      desc: '',
      args: [],
    );
  }

  /// `Danta Developer`
  String get Frankstein73_description {
    return Intl.message(
      'Danta Developer',
      name: 'Frankstein73_description',
      desc: '',
      args: [],
    );
  }

  /// `Forum Frontend Developer`
  String get KYLN24_description {
    return Intl.message(
      'Forum Frontend Developer',
      name: 'KYLN24_description',
      desc: '',
      args: [],
    );
  }

  /// `About This App`
  String get about {
    return Intl.message('About This App', name: 'about', desc: '', args: []);
  }

  /// `You are about to delete floor #{floor}`
  String about_to_delete_floor(Object floor) {
    return Intl.message(
      'You are about to delete floor #$floor',
      name: 'about_to_delete_floor',
      desc: '',
      args: [floor],
    );
  }

  /// `You are about to delete review #{review}`
  String about_to_delete_review(Object review) {
    return Intl.message(
      'You are about to delete review #$review',
      name: 'about_to_delete_review',
      desc: '',
      args: [review],
    );
  }

  /// `Accessibility: High Contrast Color`
  String get accessibility_coloring {
    return Intl.message(
      'Accessibility: High Contrast Color',
      name: 'accessibility_coloring',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get account {
    return Intl.message('Account', name: 'account', desc: '', args: []);
  }

  /// `Your account is all set`
  String get account_is_set {
    return Intl.message(
      'Your account is all set',
      name: 'account_is_set',
      desc: '',
      args: [],
    );
  }

  /// `Acknowledgements`
  String get acknowledgements {
    return Intl.message(
      'Acknowledgements',
      name: 'acknowledgements',
      desc: '',
      args: [],
    );
  }

  /// `We would like to thank [IvanFei](https://github.com/ivanfei-1) for designing the icon for this app, and [MSapphire](https://www.xiaohongshu.com/user/profile/6575475f000000001902d794), [Lin2510](), and [zzz111]() for contributing emojis and other artistic designs to the app.`
  String get acknowledgements_markdown {
    return Intl.message(
      'We would like to thank [IvanFei](https://github.com/ivanfei-1) for designing the icon for this app, and [MSapphire](https://www.xiaohongshu.com/user/profile/6575475f000000001902d794), [Lin2510](), and [zzz111]() for contributing emojis and other artistic designs to the app.',
      name: 'acknowledgements_markdown',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message('Add', name: 'add', desc: '', args: []);
  }

  /// `Add Class Slot`
  String get add_class_time {
    return Intl.message(
      'Add Class Slot',
      name: 'add_class_time',
      desc: '',
      args: [],
    );
  }

  /// `Add Courses Manually`
  String get add_courses {
    return Intl.message(
      'Add Courses Manually',
      name: 'add_courses',
      desc: '',
      args: [],
    );
  }

  /// `Add Image`
  String get add_image {
    return Intl.message('Add Image', name: 'add_image', desc: '', args: []);
  }

  /// `New Card`
  String get add_new_card {
    return Intl.message('New Card', name: 'add_new_card', desc: '', args: []);
  }

  /// `New Divider`
  String get add_new_divider {
    return Intl.message(
      'New Divider',
      name: 'add_new_divider',
      desc: '',
      args: [],
    );
  }

  /// `Add new tag`
  String get add_new_tag {
    return Intl.message('Add new tag', name: 'add_new_tag', desc: '', args: []);
  }

  /// `Add Special Flag`
  String get add_special_tag {
    return Intl.message(
      'Add Special Flag',
      name: 'add_special_tag',
      desc: '',
      args: [],
    );
  }

  /// `Administrative Actions`
  String get admin_options {
    return Intl.message(
      'Administrative Actions',
      name: 'admin_options',
      desc: '',
      args: [],
    );
  }

  /// `After`
  String get after_enabled {
    return Intl.message('After', name: 'after_enabled', desc: '', args: []);
  }

  /// `P.M.`
  String get afternoon {
    return Intl.message('P.M.', name: 'afternoon', desc: '', args: []);
  }

  /// `You have to read and accept the license below`
  String get agree_license_tip {
    return Intl.message(
      'You have to read and accept the license below',
      name: 'agree_license_tip',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message('All', name: 'all', desc: '', args: []);
  }

  /// `All Tags`
  String get all_tags {
    return Intl.message('All Tags', name: 'all_tags', desc: '', args: []);
  }

  /// `Already Set`
  String get already_set {
    return Intl.message('Already Set', name: 'already_set', desc: '', args: []);
  }

  /// `… and more`
  String get and_more {
    return Intl.message('… and more', name: 'and_more', desc: '', args: []);
  }

  /// `A miniature Fudan integrated service app, created by several Fudan undergraduate students with love. We hope it can facilitate your life~`
  String get app_description {
    return Intl.message(
      'A miniature Fudan integrated service app, created by several Fudan undergraduate students with love. We hope it can facilitate your life~',
      name: 'app_description',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get app_description_title {
    return Intl.message(
      'Description',
      name: 'app_description_title',
      desc: '',
      args: [],
    );
  }

  /// `[Feedback]`
  String get app_feedback {
    return Intl.message('[Feedback]', name: 'app_feedback', desc: '', args: []);
  }

  /// `Danta`
  String get app_name {
    return Intl.message('Danta', name: 'app_name', desc: '', args: []);
  }

  /// `Are you sure?`
  String get are_you_sure {
    return Intl.message(
      'Are you sure?',
      name: 'are_you_sure',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to pin/unpin this post?`
  String get are_you_sure_pin_unpin {
    return Intl.message(
      'Are you sure you want to pin/unpin this post?',
      name: 'are_you_sure_pin_unpin',
      desc: '',
      args: [],
    );
  }

  /// `Passionate developers\nfrom A.I. & C.S. & Economics & Physics\nat Fudan University`
  String get author_descriptor {
    return Intl.message(
      'Passionate developers\nfrom A.I. & C.S. & Economics & Physics\nat Fudan University',
      name: 'author_descriptor',
      desc: '',
      args: [],
    );
  }

  /// `Developers`
  String get authors {
    return Intl.message('Developers', name: 'authors', desc: '', args: []);
  }

  /// `Background Image`
  String get background_image {
    return Intl.message(
      'Background Image',
      name: 'background_image',
      desc: '',
      args: [],
    );
  }

  /// `A background image is already set, do you wish to remove it?`
  String get background_image_already_set {
    return Intl.message(
      'A background image is already set, do you wish to remove it?',
      name: 'background_image_already_set',
      desc: '',
      args: [],
    );
  }

  /// `Choose an image as forum background`
  String get background_image_description {
    return Intl.message(
      'Choose an image as forum background',
      name: 'background_image_description',
      desc: '',
      args: [],
    );
  }

  /// `You are not allowed to post in this division until {date}`
  String ban_post_until(Object date) {
    return Intl.message(
      'You are not allowed to post in this division until $date',
      name: 'ban_post_until',
      desc: '',
      args: [date],
    );
  }

  /// `Ban reporter`
  String get ban_reporter {
    return Intl.message(
      'Ban reporter',
      name: 'ban_reporter',
      desc: '',
      args: [],
    );
  }

  /// `{days} day(s)`
  String ban_reporter_days(int days) {
    return Intl.message(
      '$days day(s)',
      name: 'ban_reporter_days',
      desc: '',
      args: [days],
    );
  }

  /// `Reason (optional)`
  String get ban_reporter_reason_hint {
    return Intl.message(
      'Reason (optional)',
      name: 'ban_reporter_reason_hint',
      desc: '',
      args: [],
    );
  }

  /// `Note: This will ban the user who submitted the report, NOT the reported user.`
  String get ban_reporter_tip {
    return Intl.message(
      'Note: This will ban the user who submitted the report, NOT the reported user.',
      name: 'ban_reporter_tip',
      desc: '',
      args: [],
    );
  }

  /// `Before`
  String get before_enabled {
    return Intl.message('Before', name: 'before_enabled', desc: '', args: []);
  }

  /// `Danta Developer`
  String get boreas618_description {
    return Intl.message(
      'Danta Developer',
      name: 'boreas618_description',
      desc: '',
      args: [],
    );
  }

  /// `To    `
  String get bus_dest {
    return Intl.message('To    ', name: 'bus_dest', desc: '', args: []);
  }

  /// `School Bus`
  String get bus_query {
    return Intl.message('School Bus', name: 'bus_query', desc: '', args: []);
  }

  /// `From`
  String get bus_start {
    return Intl.message('From', name: 'bus_start', desc: '', args: []);
  }

  /// `Cached cleared`
  String get cache_cleared {
    return Intl.message(
      'Cached cleared',
      name: 'cache_cleared',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Unable to open this URL`
  String get cannot_launch_url {
    return Intl.message(
      'Unable to open this URL',
      name: 'cannot_launch_url',
      desc: '',
      args: [],
    );
  }

  /// `Unable to Login?`
  String get cant_login {
    return Intl.message(
      'Unable to Login?',
      name: 'cant_login',
      desc: '',
      args: [],
    );
  }

  /// `Captcha needed, please following the on-screen instructions.`
  String get captcha_needed {
    return Intl.message(
      'Captcha needed, please following the on-screen instructions.',
      name: 'captcha_needed',
      desc: '',
      args: [],
    );
  }

  /// `Select Campus`
  String get choose_area {
    return Intl.message(
      'Select Campus',
      name: 'choose_area',
      desc: '',
      args: [],
    );
  }

  /// `Choose your email below`
  String get choose_your_email_below {
    return Intl.message(
      'Choose your email below',
      name: 'choose_your_email_below',
      desc: '',
      args: [],
    );
  }

  /// `Classroom`
  String get classroom {
    return Intl.message('Classroom', name: 'classroom', desc: '', args: []);
  }

  /// `Clear`
  String get clear {
    return Intl.message('Clear', name: 'clear', desc: '', args: []);
  }

  /// `Clear Image Cache`
  String get clear_cache {
    return Intl.message(
      'Clear Image Cache',
      name: 'clear_cache',
      desc: '',
      args: [],
    );
  }

  /// `Images will reload next time you view them`
  String get clear_cache_description {
    return Intl.message(
      'Images will reload next time you view them',
      name: 'clear_cache_description',
      desc: '',
      args: [],
    );
  }

  /// `Community Norm`
  String get community_convention {
    return Intl.message(
      'Community Norm',
      name: 'community_convention',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message('Confirm', name: 'confirm', desc: '', args: []);
  }

  /// `Are you sure you want to delete all instances of this image from the editor?`
  String get confirm_delete_image {
    return Intl.message(
      'Are you sure you want to delete all instances of this image from the editor?',
      name: 'confirm_delete_image',
      desc: '',
      args: [],
    );
  }

  /// `Connection cancelled unexpectedly`
  String get connection_cancelled {
    return Intl.message(
      'Connection cancelled unexpectedly',
      name: 'connection_cancelled',
      desc: '',
      args: [],
    );
  }

  /// `Connection Timeout`
  String get connection_timeout {
    return Intl.message(
      'Connection Timeout',
      name: 'connection_timeout',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get contact_us {
    return Intl.message('Contact Us', name: 'contact_us', desc: '', args: []);
  }

  /// `Still send`
  String get continue_sending {
    return Intl.message(
      'Still send',
      name: 'continue_sending',
      desc: '',
      args: [],
    );
  }

  /// `Copy All`
  String get copy {
    return Intl.message('Copy All', name: 'copy', desc: '', args: []);
  }

  /// `Copy Password`
  String get copy_password {
    return Intl.message(
      'Copy Password',
      name: 'copy_password',
      desc: '',
      args: [],
    );
  }

  /// `Copy QQ Group ID`
  String get copy_qq_group_id {
    return Intl.message(
      'Copy QQ Group ID',
      name: 'copy_qq_group_id',
      desc: '',
      args: [],
    );
  }

  /// `Text copied`
  String get copy_success {
    return Intl.message(
      'Text copied',
      name: 'copy_success',
      desc: '',
      args: [],
    );
  }

  /// `Available Weeks`
  String get course_available_week {
    return Intl.message(
      'Available Weeks',
      name: 'course_available_week',
      desc: '',
      args: [],
    );
  }

  /// `Course Code`
  String get course_id {
    return Intl.message('Course Code', name: 'course_id', desc: '', args: []);
  }

  /// `Course Name`
  String get course_name {
    return Intl.message('Course Name', name: 'course_name', desc: '', args: []);
  }

  /// `Classroom`
  String get course_room_name {
    return Intl.message(
      'Classroom',
      name: 'course_room_name',
      desc: '',
      args: [],
    );
  }

  /// `Course Schedule`
  String get course_schedule {
    return Intl.message(
      'Course Schedule',
      name: 'course_schedule',
      desc: '',
      args: [],
    );
  }

  /// `Teacher Name`
  String get course_teacher_name {
    return Intl.message(
      'Teacher Name',
      name: 'course_teacher_name',
      desc: '',
      args: [],
    );
  }

  /// `Invalid username or password`
  String get credentials_invalid {
    return Intl.message(
      'Invalid username or password',
      name: 'credentials_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Credits`
  String get credits {
    return Intl.message('Credits', name: 'credits', desc: '', args: []);
  }

  /// `[WARNING: DEBUG FEATURE] Cupertino`
  String get cupertino {
    return Intl.message(
      '[WARNING: DEBUG FEATURE] Cupertino',
      name: 'cupertino',
      desc: '',
      args: [],
    );
  }

  /// `Current date: `
  String get current_date {
    return Intl.message(
      'Current date: ',
      name: 'current_date',
      desc: '',
      args: [],
    );
  }

  /// `Course`
  String get curriculum {
    return Intl.message('Course', name: 'curriculum', desc: '', args: []);
  }

  /// `Average rating`
  String get curriculum_average_rating {
    return Intl.message(
      'Average rating',
      name: 'curriculum_average_rating',
      desc: '',
      args: [],
    );
  }

  /// `Course details`
  String get curriculum_details {
    return Intl.message(
      'Course details',
      name: 'curriculum_details',
      desc: '',
      args: [],
    );
  }

  /// `Please enter content`
  String get curriculum_enter_content {
    return Intl.message(
      'Please enter content',
      name: 'curriculum_enter_content',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your title`
  String get curriculum_enter_title {
    return Intl.message(
      'Please enter your title',
      name: 'curriculum_enter_title',
      desc: '',
      args: [],
    );
  }

  /// `Overall rating`
  String get curriculum_ratings_overall {
    return Intl.message(
      'Overall rating',
      name: 'curriculum_ratings_overall',
      desc: '',
      args: [],
    );
  }

  /// `Very bad;Bad;Medium;Favorable;Very favorable`
  String get curriculum_ratings_overall_words {
    return Intl.message(
      'Very bad;Bad;Medium;Favorable;Very favorable',
      name: 'curriculum_ratings_overall_words',
      desc: '',
      args: [],
    );
  }

  /// `Teaching style`
  String get curriculum_ratings_content {
    return Intl.message(
      'Teaching style',
      name: 'curriculum_ratings_content',
      desc: '',
      args: [],
    );
  }

  /// `Hardcore;Hard;Medium;Easy;Super easy`
  String get curriculum_ratings_content_words {
    return Intl.message(
      'Hardcore;Hard;Medium;Easy;Super easy',
      name: 'curriculum_ratings_content_words',
      desc: '',
      args: [],
    );
  }

  /// `Workload`
  String get curriculum_ratings_workload {
    return Intl.message(
      'Workload',
      name: 'curriculum_ratings_workload',
      desc: '',
      args: [],
    );
  }

  /// `Enormous;Large;Medium;Light;Super light`
  String get curriculum_ratings_workload_words {
    return Intl.message(
      'Enormous;Large;Medium;Light;Super light',
      name: 'curriculum_ratings_workload_words',
      desc: '',
      args: [],
    );
  }

  /// `Assessment`
  String get curriculum_ratings_assessment {
    return Intl.message(
      'Assessment',
      name: 'curriculum_ratings_assessment',
      desc: '',
      args: [],
    );
  }

  /// `Very strict;Strict;Medium;Loose;Very loose`
  String get curriculum_ratings_assessment_words {
    return Intl.message(
      'Very strict;Strict;Medium;Loose;Very loose',
      name: 'curriculum_ratings_assessment_words',
      desc: '',
      args: [],
    );
  }

  /// `Class name or Class ID or Teacher name`
  String get curriculum_search_hint {
    return Intl.message(
      'Class name or Class ID or Teacher name',
      name: 'curriculum_search_hint',
      desc: '',
      args: [],
    );
  }

  /// `Please select teacher`
  String get curriculum_select_teacher {
    return Intl.message(
      'Please select teacher',
      name: 'curriculum_select_teacher',
      desc: '',
      args: [],
    );
  }

  /// `Please select course time`
  String get curriculum_select_time {
    return Intl.message(
      'Please select course time',
      name: 'curriculum_select_time',
      desc: '',
      args: [],
    );
  }

  /// `Unknown`
  String get curriculum_unknown_rating {
    return Intl.message(
      'Unknown',
      name: 'curriculum_unknown_rating',
      desc: '',
      args: [],
    );
  }

  /// `Dashboard`
  String get dashboard {
    return Intl.message('Dashboard', name: 'dashboard', desc: '', args: []);
  }

  /// `Dashboard Layout`
  String get dashboard_layout {
    return Intl.message(
      'Dashboard Layout',
      name: 'dashboard_layout',
      desc: '',
      args: [],
    );
  }

  /// `{num} d ago`
  String day_ago(Object num) {
    return Intl.message('$num d ago', name: 'day_ago', desc: '', args: [num]);
  }

  /// `Current Campus`
  String get default_campus {
    return Intl.message(
      'Current Campus',
      name: 'default_campus',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get default_language {
    return Intl.message(
      'Language',
      name: 'default_language',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message('Delete', name: 'delete', desc: '', args: []);
  }

  /// `Delete Floor`
  String get delete_floor {
    return Intl.message(
      'Delete Floor',
      name: 'delete_floor',
      desc: '',
      args: [],
    );
  }

  /// `Delete Image`
  String get delete_image {
    return Intl.message(
      'Delete Image',
      name: 'delete_image',
      desc: '',
      args: [],
    );
  }

  /// `Delete this tag?`
  String get delete_this_tag {
    return Intl.message(
      'Delete this tag?',
      name: 'delete_this_tag',
      desc: '',
      args: [],
    );
  }

  /// `Deleted`
  String get deleted {
    return Intl.message('Deleted', name: 'deleted', desc: '', args: []);
  }

  /// `Dev Team Announcement {date}`
  String developer_announcement(Object date) {
    return Intl.message(
      'Dev Team Announcement $date',
      name: 'developer_announcement',
      desc: '',
      args: [date],
    );
  }

  /// `Diagnostics`
  String get diagnostic_information {
    return Intl.message(
      'Diagnostics',
      name: 'diagnostic_information',
      desc: '',
      args: [],
    );
  }

  /// `Canteen Popularity`
  String get dining_hall_crowdedness {
    return Intl.message(
      'Canteen Popularity',
      name: 'dining_hall_crowdedness',
      desc: '',
      args: [],
    );
  }

  /// `Disabled`
  String get disabled {
    return Intl.message('Disabled', name: 'disabled', desc: '', args: []);
  }

  /// `Divider`
  String get divider {
    return Intl.message('Divider', name: 'divider', desc: '', args: []);
  }

  /// `Dorm Electricity`
  String get dorm_electricity {
    return Intl.message(
      'Dorm Electricity',
      name: 'dorm_electricity',
      desc: '',
      args: [],
    );
  }

  /// `Available: {available} kWh; Used: {used} kWh`
  String dorm_electricity_subtitle(Object available, Object used) {
    return Intl.message(
      'Available: $available kWh; Used: $used kWh',
      name: 'dorm_electricity_subtitle',
      desc: '',
      args: [available, used],
    );
  }

  /// `Card Balance`
  String get ecard_balance {
    return Intl.message(
      'Card Balance',
      name: 'ecard_balance',
      desc: '',
      args: [],
    );
  }

  /// `Transactions`
  String get ecard_balance_log {
    return Intl.message(
      'Transactions',
      name: 'ecard_balance_log',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Empty Classrooms`
  String get empty_classrooms {
    return Intl.message(
      'Empty Classrooms',
      name: 'empty_classrooms',
      desc: '',
      args: [],
    );
  }

  /// `Enable`
  String get enable {
    return Intl.message('Enable', name: 'enable', desc: '', args: []);
  }

  /// `Enabled`
  String get enabled {
    return Intl.message('Enabled', name: 'enabled', desc: '', args: []);
  }

  /// `You have reached the end.`
  String get end_reached {
    return Intl.message(
      'You have reached the end.',
      name: 'end_reached',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english_language {
    return Intl.message(
      'English',
      name: 'english_language',
      desc: '',
      args: [],
    );
  }

  /// `Enter Captcha`
  String get enter_captcha {
    return Intl.message(
      'Enter Captcha',
      name: 'enter_captcha',
      desc: '',
      args: [],
    );
  }

  /// `Entry Permission`
  String get entry_permission {
    return Intl.message(
      'Entry Permission',
      name: 'entry_permission',
      desc: '',
      args: [],
    );
  }

  /// `There was an error adding exam "{name}".`
  String error_adding_exam(Object name) {
    return Intl.message(
      'There was an error adding exam "$name".',
      name: 'error_adding_exam',
      desc: '',
      args: [name],
    );
  }

  /// `Show detail`
  String get error_detail {
    return Intl.message(
      'Show detail',
      name: 'error_detail',
      desc: '',
      args: [],
    );
  }

  /// `Eve`
  String get evening {
    return Intl.message('Eve', name: 'evening', desc: '', args: []);
  }

  /// `Exams and Grades`
  String get exam_schedule {
    return Intl.message(
      'Exams and Grades',
      name: 'exam_schedule',
      desc: '',
      args: [],
    );
  }

  /// `Exam Data Unavailable`
  String get exam_unavailable {
    return Intl.message(
      'Exam Data Unavailable',
      name: 'exam_unavailable',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load`
  String get failed {
    return Intl.message('Failed to load', name: 'failed', desc: '', args: []);
  }

  /// `Please check JWFW for make-up exam grades.`
  String get failed_exam_no_grade {
    return Intl.message(
      'Please check JWFW for make-up exam grades.',
      name: 'failed_exam_no_grade',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get fatal_error {
    return Intl.message('Error', name: 'fatal_error', desc: '', args: []);
  }

  /// `Favorites`
  String get favorites {
    return Intl.message('Favorites', name: 'favorites', desc: '', args: []);
  }

  /// `Clean Mode`
  String get forum_clean_mode {
    return Intl.message(
      'Clean Mode',
      name: 'forum_clean_mode',
      desc: '',
      args: [],
    );
  }

  /// `Hide unfriendly emojis in Forum`
  String get forum_clean_mode_description {
    return Intl.message(
      'Hide unfriendly emojis in Forum',
      name: 'forum_clean_mode_description',
      desc: '',
      args: [],
    );
  }

  /// `When Clean Mode is enabled, emojis that are widely considered "unfriendly" will be hidden.`
  String get forum_clean_mode_detail {
    return Intl.message(
      'When Clean Mode is enabled, emojis that are widely considered "unfriendly" will be hidden.',
      name: 'forum_clean_mode_detail',
      desc: '',
      args: [],
    );
  }

  /// `Blocked Tags`
  String get forum_hidden_tags {
    return Intl.message(
      'Blocked Tags',
      name: 'forum_hidden_tags',
      desc: '',
      args: [],
    );
  }

  /// `Hide posts with specific tags`
  String get forum_hidden_tags_description {
    return Intl.message(
      'Hide posts with specific tags',
      name: 'forum_hidden_tags_description',
      desc: '',
      args: [],
    );
  }

  /// `Blocked Tags`
  String get forum_hidden_tags_title {
    return Intl.message(
      'Blocked Tags',
      name: 'forum_hidden_tags_title',
      desc: '',
      args: [],
    );
  }

  /// `NSFW Content`
  String get forum_nsfw_behavior {
    return Intl.message(
      'NSFW Content',
      name: 'forum_nsfw_behavior',
      desc: '',
      args: [],
    );
  }

  /// `Show campaigns`
  String get forum_show_banner {
    return Intl.message(
      'Show campaigns',
      name: 'forum_show_banner',
      desc: '',
      args: [],
    );
  }

  /// `Show some non-invasive campaigns and announcements`
  String get forum_show_banner_description {
    return Intl.message(
      'Show some non-invasive campaigns and announcements',
      name: 'forum_show_banner_description',
      desc: '',
      args: [],
    );
  }

  /// `Online (ID: {id})`
  String forum_user_id(Object id) {
    return Intl.message(
      'Online (ID: $id)',
      name: 'forum_user_id',
      desc: '',
      args: [id],
    );
  }

  /// `dev@danta.tech`
  String get feedback_email {
    return Intl.message(
      'dev@danta.tech',
      name: 'feedback_email',
      desc: '',
      args: [],
    );
  }

  /// `Fenglin`
  String get fenglin_campus {
    return Intl.message('Fenglin', name: 'fenglin_campus', desc: '', args: []);
  }

  /// `Filtering by "{tag}"`
  String filtering_by_tag(Object tag) {
    return Intl.message(
      'Filtering by "$tag"',
      name: 'filtering_by_tag',
      desc: '',
      args: [tag],
    );
  }

  /// `Fold`
  String get fold {
    return Intl.message('Fold', name: 'fold', desc: '', args: []);
  }

  /// `Fold Floor`
  String get fold_floor {
    return Intl.message('Fold Floor', name: 'fold_floor', desc: '', args: []);
  }

  /// `Content hidden. Tap to view`
  String get folded {
    return Intl.message(
      'Content hidden. Tap to view',
      name: 'folded',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password`
  String get forgot_password {
    return Intl.message(
      'Forget Password',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred while parsing data`
  String get format_exception {
    return Intl.message(
      'An error occurred while parsing data',
      name: 'format_exception',
      desc: '',
      args: [],
    );
  }

  /// `[Formula]`
  String get formula {
    return Intl.message('[Formula]', name: 'formula', desc: '', args: []);
  }

  /// `Forum`
  String get forum {
    return Intl.message('Forum', name: 'forum', desc: '', args: []);
  }

  /// `Post`
  String get forum_post_enter_content {
    return Intl.message(
      'Post',
      name: 'forum_post_enter_content',
      desc: '',
      args: [],
    );
  }

  /// `Copy Selected`
  String get free_select {
    return Intl.message(
      'Copy Selected',
      name: 'free_select',
      desc: '',
      args: [],
    );
  }

  /// `Danta Developer`
  String get fsy2001_description {
    return Intl.message(
      'Danta Developer',
      name: 'fsy2001_description',
      desc: '',
      args: [],
    );
  }

  /// `Academic Announcements`
  String get fudan_aao_notices {
    return Intl.message(
      'Academic Announcements',
      name: 'fudan_aao_notices',
      desc: '',
      args: [],
    );
  }

  /// `Library Popularity`
  String get fudan_library_crowdedness {
    return Intl.message(
      'Library Popularity',
      name: 'fudan_library_crowdedness',
      desc: '',
      args: [],
    );
  }

  /// `Fudan Postgraduate Login`
  String get fudan_postgraduate_student {
    return Intl.message(
      'Fudan Postgraduate Login',
      name: 'fudan_postgraduate_student',
      desc: '',
      args: [],
    );
  }

  /// `Fudan QR Code`
  String get fudan_qr_code {
    return Intl.message(
      'Fudan QR Code',
      name: 'fudan_qr_code',
      desc: '',
      args: [],
    );
  }

  /// `FDU Staffs`
  String get fudan_staff {
    return Intl.message('FDU Staffs', name: 'fudan_staff', desc: '', args: []);
  }

  /// `Login with UIS email`
  String get fudan_uis_email_login {
    return Intl.message(
      'Login with UIS email',
      name: 'fudan_uis_email_login',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get get_started {
    return Intl.message('Get Started', name: 'get_started', desc: '', args: []);
  }

  /// `The afternoon knows what the morning never suspected.`
  String get good_afternoon {
    return Intl.message(
      'The afternoon knows what the morning never suspected.',
      name: 'good_afternoon',
      desc: '',
      args: [],
    );
  }

  /// `Every dawn is a new sunrise.`
  String get good_morning {
    return Intl.message(
      'Every dawn is a new sunrise.',
      name: 'good_morning',
      desc: '',
      args: [],
    );
  }

  /// `Goodnight stars, goodnight air, goodnight noises everywhere.`
  String get good_night {
    return Intl.message(
      'Goodnight stars, goodnight air, goodnight noises everywhere.',
      name: 'good_night',
      desc: '',
      args: [],
    );
  }

  /// `Rise and shine.`
  String get good_noon {
    return Intl.message(
      'Rise and shine.',
      name: 'good_noon',
      desc: '',
      args: [],
    );
  }

  /// `GPA`
  String get gpa {
    return Intl.message('GPA', name: 'gpa', desc: '', args: []);
  }

  /// `Handan`
  String get handan_campus {
    return Intl.message('Handan', name: 'handan_campus', desc: '', args: []);
  }

  /// `You are using some inappropriate words: {stopWord}.\nWe do not recommend sending such words as they are not suitable for a rational discussion and are therefore more likely to attract unfriendly comments. Do you really want to send?`
  String has_stop_words(Object stopWord) {
    return Intl.message(
      'You are using some inappropriate words: $stopWord.\nWe do not recommend sending such words as they are not suitable for a rational discussion and are therefore more likely to attract unfriendly comments. Do you really want to send?',
      name: 'has_stop_words',
      desc: '',
      args: [stopWord],
    );
  }

  /// `Inappropriate words`
  String get has_stop_words_title {
    return Intl.message(
      'Inappropriate words',
      name: 'has_stop_words_title',
      desc: '',
      args: [],
    );
  }

  /// `Forum Founder / Developer`
  String get hasbai_description {
    return Intl.message(
      'Forum Founder / Developer',
      name: 'hasbai_description',
      desc: '',
      args: [],
    );
  }

  /// `Hide`
  String get hide {
    return Intl.message('Hide', name: 'hide', desc: '', args: []);
  }

  /// `Hide Post`
  String get hide_hole {
    return Intl.message('Hide Post', name: 'hide_hole', desc: '', args: []);
  }

  /// `Sure you want to hide this post permanently? Once hidden, this post will not be visible in the list of posts unless you reinstall the app.`
  String get hide_hole_confirm {
    return Intl.message(
      'Sure you want to hide this post permanently? Once hidden, this post will not be visible in the list of posts unless you reinstall the app.',
      name: 'hide_hole_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Post hidden. Effect will take place after refreshing.`
  String get hide_hole_success {
    return Intl.message(
      'Post hidden. Effect will take place after refreshing.',
      name: 'hide_hole_success',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to hide this notification permanently? You can always unhide all hidden notifications in Settings.`
  String get hide_notification_description {
    return Intl.message(
      'Do you want to hide this notification permanently? You can always unhide all hidden notifications in Settings.',
      name: 'hide_notification_description',
      desc: '',
      args: [],
    );
  }

  /// `Empty Classroom View and forum Tags`
  String get high_contrast_color_description {
    return Intl.message(
      'Empty Classroom View and forum Tags',
      name: 'high_contrast_color_description',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get history {
    return Intl.message('History', name: 'history', desc: '', args: []);
  }

  /// `Hidden`
  String get hole_hidden {
    return Intl.message('Hidden', name: 'hole_hidden', desc: '', args: []);
  }

  /// `Locked`
  String get hole_locked {
    return Intl.message('Locked', name: 'hole_locked', desc: '', args: []);
  }

  /// `Holiday`
  String get holiday {
    return Intl.message('Holiday', name: 'holiday', desc: '', args: []);
  }

  /// `{num} hr ago`
  String hour_ago(Object num) {
    return Intl.message('$num hr ago', name: 'hour_ago', desc: '', args: [num]);
  }

  /// `Danta Developer`
  String get hydrogenc_description {
    return Intl.message(
      'Danta Developer',
      name: 'hydrogenc_description',
      desc: '',
      args: [],
    );
  }

  /// `I have read and accepted {name}`
  String i_have_read_and_agreed(Object name) {
    return Intl.message(
      'I have read and accepted $name',
      name: 'i_have_read_and_agreed',
      desc: '',
      args: [name],
    );
  }

  /// `OK`
  String get i_see {
    return Intl.message('OK', name: 'i_see', desc: '', args: []);
  }

  /// `Image`
  String get image {
    return Intl.message('Image', name: 'image', desc: '', args: []);
  }

  /// `Failed to save image. Check your permission settings.`
  String get image_save_failed {
    return Intl.message(
      'Failed to save image. Check your permission settings.',
      name: 'image_save_failed',
      desc: '',
      args: [],
    );
  }

  /// `Image Saved`
  String get image_save_success {
    return Intl.message(
      'Image Saved',
      name: 'image_save_success',
      desc: '',
      args: [],
    );
  }

  /// `[Image]`
  String get image_tag {
    return Intl.message('[Image]', name: 'image_tag', desc: '', args: []);
  }

  /// `Input Content (leave empty to restore)`
  String get input_reason {
    return Intl.message(
      'Input Content (leave empty to restore)',
      name: 'input_reason',
      desc: '',
      args: [],
    );
  }

  /// `Input your email`
  String get input_your_email {
    return Intl.message(
      'Input your email',
      name: 'input_your_email',
      desc: '',
      args: [],
    );
  }

  /// `Input your Danta Account`
  String get input_your_email_password {
    return Intl.message(
      'Input your Danta Account',
      name: 'input_your_email_password',
      desc: '',
      args: [],
    );
  }

  /// `Input your OTP code`
  String get input_your_email_secure_code {
    return Intl.message(
      'Input your OTP code',
      name: 'input_your_email_secure_code',
      desc: '',
      args: [],
    );
  }

  /// `Please provide valid information about course slots`
  String get invalid_course_info {
    return Intl.message(
      'Please provide valid information about course slots',
      name: 'invalid_course_info',
      desc: '',
      args: [],
    );
  }

  /// `Forum Frontend Developer`
  String get ivanfei_description {
    return Intl.message(
      'Forum Frontend Developer',
      name: 'ivanfei_description',
      desc: '',
      args: [],
    );
  }

  /// `Japanese`
  String get japanese_language {
    return Intl.message(
      'Japanese',
      name: 'japanese_language',
      desc: '',
      args: [],
    );
  }

  /// `Jiangwan`
  String get jiangwan_campus {
    return Intl.message(
      'Jiangwan',
      name: 'jiangwan_campus',
      desc: '',
      args: [],
    );
  }

  /// `Forum Backend Developer`
  String get jingyijun_description {
    return Intl.message(
      'Forum Backend Developer',
      name: 'jingyijun_description',
      desc: '',
      args: [],
    );
  }

  /// `Locate`
  String get jump_to_hole {
    return Intl.message('Locate', name: 'jump_to_hole', desc: '', args: []);
  }

  /// `Danta Developer`
  String get koowz_description {
    return Intl.message(
      'Danta Developer',
      name: 'koowz_description',
      desc: '',
      args: [],
    );
  }

  /// `Failed to connect to the Campus Intranet`
  String get lan_connection_issue_1 {
    return Intl.message(
      'Failed to connect to the Campus Intranet',
      name: 'lan_connection_issue_1',
      desc: '',
      args: [],
    );
  }

  /// `Campus VPN`
  String get lan_connection_issue_1_action {
    return Intl.message(
      'Campus VPN',
      name: 'lan_connection_issue_1_action',
      desc: '',
      args: [],
    );
  }

  /// `Unable to connect to the Fudan Campus Intranet, some features may not be available. However, if you have 'Use WebVPN' enabled, you may still access those feature directly. \n\nIf this doesn't work, you may have to use the campus VPN (Easy Connect) to access the Campus Intranet.`
  String get lan_connection_issue_1_description {
    return Intl.message(
      'Unable to connect to the Fudan Campus Intranet, some features may not be available. However, if you have `Use WebVPN` enabled, you may still access those feature directly. \n\nIf this doesn\'t work, you may have to use the campus VPN (Easy Connect) to access the Campus Intranet.',
      name: 'lan_connection_issue_1_description',
      desc: '',
      args: [],
    );
  }

  /// `3 simple steps:\n\n1. [Click here](https://stuvpn.fudan.edu.cn/com/installClient.html#auto-common) to download the app.\n2. Open the installed app and type in the Address stuvpn.fudan.edu.cn\n3. Enter your UIS account & password.\n\nThen all features of Danta will work normally.`
  String get lan_connection_issue_1_guide_content {
    return Intl.message(
      '3 simple steps:\n\n1. [Click here](https://stuvpn.fudan.edu.cn/com/installClient.html#auto-common) to download the app.\n2. Open the installed app and type in the Address stuvpn.fudan.edu.cn\n3. Enter your UIS account & password.\n\nThen all features of Danta will work normally.',
      name: 'lan_connection_issue_1_guide_content',
      desc: '',
      args: [],
    );
  }

  /// `How to use the VPN？`
  String get lan_connection_issue_1_guide_title {
    return Intl.message(
      'How to use the VPN？',
      name: 'lan_connection_issue_1_guide_title',
      desc: '',
      args: [],
    );
  }

  /// `Last 15 days`
  String get last_15_days {
    return Intl.message(
      'Last 15 days',
      name: 'last_15_days',
      desc: '',
      args: [],
    );
  }

  /// `Last 30 days`
  String get last_30_days {
    return Intl.message(
      'Last 30 days',
      name: 'last_30_days',
      desc: '',
      args: [],
    );
  }

  /// `Last 7 days`
  String get last_7_days {
    return Intl.message('Last 7 days', name: 'last_7_days', desc: '', args: []);
  }

  /// `Last created`
  String get last_created {
    return Intl.message(
      'Last created',
      name: 'last_created',
      desc: '',
      args: [],
    );
  }

  /// `Last replied`
  String get last_replied {
    return Intl.message(
      'Last replied',
      name: 'last_replied',
      desc: '',
      args: [],
    );
  }

  /// `Last Updated: {date}`
  String last_updated(Object date) {
    return Intl.message(
      'Last Updated: $date',
      name: 'last_updated',
      desc: '',
      args: [date],
    );
  }

  /// `The dead of midnight is the noon of thought.`
  String get late_night {
    return Intl.message(
      'The dead of midnight is the noon of thought.',
      name: 'late_night',
      desc: '',
      args: [],
    );
  }

  /// `Latest`
  String get latest_announcement {
    return Intl.message(
      'Latest',
      name: 'latest_announcement',
      desc: '',
      args: [],
    );
  }

  /// `{username} replied {date}:`
  String latest_reply(Object username, Object date) {
    return Intl.message(
      '$username replied $date:',
      name: 'latest_reply',
      desc: '',
      args: [username, date],
    );
  }

  /// `LaTeX parser is on. You can write with LaTeX syntax. If you don't know what LaTeX is, check out https://liam.page/2014/09/08/latex-introduction/ .`
  String get latex_description {
    return Intl.message(
      'LaTeX parser is on. You can write with LaTeX syntax. If you don\'t know what LaTeX is, check out https://liam.page/2014/09/08/latex-introduction/ .',
      name: 'latex_description',
      desc: '',
      args: [],
    );
  }

  /// `LaTeX enabled`
  String get latex_enabled {
    return Intl.message(
      'LaTeX enabled',
      name: 'latex_enabled',
      desc: '',
      args: [],
    );
  }

  /// `Level {level}`
  String level(Object level) {
    return Intl.message('Level $level', name: 'level', desc: '', args: [level]);
  }

  /// `Like ({likes})`
  String like(Object likes) {
    return Intl.message('Like ($likes)', name: 'like', desc: '', args: [likes]);
  }

  /// `Liked ({likes})`
  String liked(Object likes) {
    return Intl.message(
      'Liked ($likes)',
      name: 'liked',
      desc: '',
      args: [likes],
    );
  }

  /// `Unable to connect to Fudan Campus Intranet. Using alternative data sources. GPA and grouping exam by semester is not available.`
  String get limited_mode_description {
    return Intl.message(
      'Unable to connect to Fudan Campus Intranet. Using alternative data sources. GPA and grouping exam by semester is not available.',
      name: 'limited_mode_description',
      desc: '',
      args: [],
    );
  }

  /// `Limited Access`
  String get limited_mode_title {
    return Intl.message(
      'Limited Access',
      name: 'limited_mode_title',
      desc: '',
      args: [],
    );
  }

  /// `Link`
  String get link {
    return Intl.message('Link', name: 'link', desc: '', args: []);
  }

  /// `Loading...`
  String get loading {
    return Intl.message('Loading...', name: 'loading', desc: '', args: []);
  }

  /// `Loading Fudan QR Code...\nThis may take 5-10 seconds, depending on Fudan servers.`
  String get loading_qr_code {
    return Intl.message(
      'Loading Fudan QR Code...\nThis may take 5-10 seconds, depending on Fudan servers.',
      name: 'loading_qr_code',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Login by Danta Account`
  String get login_by_email_password {
    return Intl.message(
      'Login by Danta Account',
      name: 'login_by_email_password',
      desc: '',
      args: [],
    );
  }

  /// `Please login from the forum page.`
  String get login_from_forum_page {
    return Intl.message(
      'Please login from the forum page.',
      name: 'login_from_forum_page',
      desc: '',
      args: [],
    );
  }

  /// `Failed to log in through UIS system.\nIf you has attempted to log in with wrong passwords for several times, you might need to complete a successful login through a browser manually.`
  String get login_issue_1 {
    return Intl.message(
      'Failed to log in through UIS system.\nIf you has attempted to log in with wrong passwords for several times, you might need to complete a successful login through a browser manually.',
      name: 'login_issue_1',
      desc: '',
      args: [],
    );
  }

  /// `Open UIS Login Page`
  String get login_issue_1_action {
    return Intl.message(
      'Open UIS Login Page',
      name: 'login_issue_1_action',
      desc: '',
      args: [],
    );
  }

  /// `Failed to fetch information related to the semester from the server, please retry. \nIf you skip directly, there may be problems with date calculation for course schedules.`
  String get login_issue_2 {
    return Intl.message(
      'Failed to fetch information related to the semester from the server, please retry. \nIf you skip directly, there may be problems with date calculation for course schedules.',
      name: 'login_issue_2',
      desc: '',
      args: [],
    );
  }

  /// `If you encounter problems while logging in, please contact us at dev@danta.tech or QQ group {QQ}.\n\nYou may also want to read Dev Team Announcements in case your problem is a known issue.`
  String login_problem(Object QQ) {
    return Intl.message(
      'If you encounter problems while logging in, please contact us at dev@danta.tech or QQ group $QQ.\n\nYou may also want to read Dev Team Announcements in case your problem is a known issue.',
      name: 'login_problem',
      desc: '',
      args: [QQ],
    );
  }

  /// `Fudan Undergraduate Login`
  String get login_uis_dialog_title {
    return Intl.message(
      'Fudan Undergraduate Login',
      name: 'login_uis_dialog_title',
      desc: '',
      args: [],
    );
  }

  /// `Your password is only sent to Fudan servers via secure connection.`
  String get login_uis_description {
    return Intl.message(
      'Your password is only sent to Fudan servers via secure connection.',
      name: 'login_uis_description',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get login_uis_pwd {
    return Intl.message('Password', name: 'login_uis_pwd', desc: '', args: []);
  }

  /// `ID`
  String get login_uis_uid {
    return Intl.message('ID', name: 'login_uis_uid', desc: '', args: []);
  }

  /// `Logging in...`
  String get logining {
    return Intl.message('Logging in...', name: 'logining', desc: '', args: []);
  }

  /// `Logout`
  String get logout {
    return Intl.message('Logout', name: 'logout', desc: '', args: []);
  }

  /// `You are logging out of the forum`
  String get logout_forum {
    return Intl.message(
      'You are logging out of the forum',
      name: 'logout_forum',
      desc: '',
      args: [],
    );
  }

  /// `All data stored locally will be deleted.`
  String get logout_question_prompt {
    return Intl.message(
      'All data stored locally will be deleted.',
      name: 'logout_question_prompt',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure?`
  String get logout_question_prompt_title {
    return Intl.message(
      'Are you sure?',
      name: 'logout_question_prompt_title',
      desc: '',
      args: [],
    );
  }

  /// `Major`
  String get major {
    return Intl.message('Major', name: 'major', desc: '', args: []);
  }

  /// `Mark as dealt`
  String get mark_as_dealt {
    return Intl.message(
      'Mark as dealt',
      name: 'mark_as_dealt',
      desc: '',
      args: [],
    );
  }

  /// `Markdown parser is on. You can write with Markdown syntax. If you don't know what Markdown is, check out https://www.runoob.com/markdown/md-tutorial.html .`
  String get markdown_description {
    return Intl.message(
      'Markdown parser is on. You can write with Markdown syntax. If you don\'t know what Markdown is, check out https://www.runoob.com/markdown/md-tutorial.html .',
      name: 'markdown_description',
      desc: '',
      args: [],
    );
  }

  /// `Markdown enabled`
  String get markdown_enabled {
    return Intl.message(
      'Markdown enabled',
      name: 'markdown_enabled',
      desc: '',
      args: [],
    );
  }

  /// `[WARNING: DEBUG FEATURE] Material`
  String get material {
    return Intl.message(
      '[WARNING: DEBUG FEATURE] Material',
      name: 'material',
      desc: '',
      args: [],
    );
  }

  /// `Messages`
  String get messages {
    return Intl.message('Messages', name: 'messages', desc: '', args: []);
  }

  /// `{num} min ago`
  String minute_ago(Object num) {
    return Intl.message(
      '$num min ago',
      name: 'minute_ago',
      desc: '',
      args: [num],
    );
  }

  /// `Modified`
  String get modified {
    return Intl.message('Modified', name: 'modified', desc: '', args: []);
  }

  /// `Modify`
  String get modify {
    return Intl.message('Modify', name: 'modify', desc: '', args: []);
  }

  /// `Modify Floor`
  String get modify_floor {
    return Intl.message(
      'Modify Floor',
      name: 'modify_floor',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get modify_password {
    return Intl.message(
      'Change Password',
      name: 'modify_password',
      desc: '',
      args: [],
    );
  }

  /// `Change Tags/Division`
  String get modify_tag_division {
    return Intl.message(
      'Change Tags/Division',
      name: 'modify_tag_division',
      desc: '',
      args: [],
    );
  }

  /// `Modifying #{name}`
  String modify_to(Object name) {
    return Intl.message(
      'Modifying #$name',
      name: 'modify_to',
      desc: '',
      args: [name],
    );
  }

  /// `Modifying ##{name}`
  String modify_to_floor(Object name) {
    return Intl.message(
      'Modifying ##$name',
      name: 'modify_to_floor',
      desc: '',
      args: [name],
    );
  }

  /// `Moment ago`
  String get moment_ago {
    return Intl.message('Moment ago', name: 'moment_ago', desc: '', args: []);
  }

  /// `A.M.`
  String get morning {
    return Intl.message('A.M.', name: 'morning', desc: '', args: []);
  }

  /// `[Most Crowded]{mostCrowded}餐厅 [Least Crowded]{leastCrowded}餐厅`
  String most_least_crowded_canteen(Object mostCrowded, Object leastCrowded) {
    return Intl.message(
      '[Most Crowded]$mostCrowded餐厅 [Least Crowded]$leastCrowded餐厅',
      name: 'most_least_crowded_canteen',
      desc: '',
      args: [mostCrowded, leastCrowded],
    );
  }

  /// `My email is not in the list`
  String get my_email_not_in_list {
    return Intl.message(
      'My email is not in the list',
      name: 'my_email_not_in_list',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message('Name', name: 'name', desc: '', args: []);
  }

  /// `New Post`
  String get new_post {
    return Intl.message('New Post', name: 'new_post', desc: '', args: []);
  }

  /// `New Shortcut Card`
  String get new_shortcut_card {
    return Intl.message(
      'New Shortcut Card',
      name: 'new_shortcut_card',
      desc: '',
      args: [],
    );
  }

  /// `Create a card that opens a webpage when tapped.`
  String get new_shortcut_description {
    return Intl.message(
      'Create a card that opens a webpage when tapped.',
      name: 'new_shortcut_description',
      desc: '',
      args: [],
    );
  }

  /// `Current Version: {currentVersion}\nLatest Version: {latestVersion}\n\nChangelog:`
  String new_update_description(Object currentVersion, Object latestVersion) {
    return Intl.message(
      'Current Version: $currentVersion\nLatest Version: $latestVersion\n\nChangelog:',
      name: 'new_update_description',
      desc: '',
      args: [currentVersion, latestVersion],
    );
  }

  /// `New version is available`
  String get new_update_title {
    return Intl.message(
      'New version is available',
      name: 'new_update_title',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message('Next', name: 'next', desc: '', args: []);
  }

  /// `Next course is {courseName}. You have {courseLeft} courses left today`
  String next_course_is(Object courseName, Object courseLeft) {
    return Intl.message(
      'Next course is $courseName. You have $courseLeft courses left today',
      name: 'next_course_is',
      desc: '',
      args: [courseName, courseLeft],
    );
  }

  /// `You have completed today's courses`
  String get next_course_none {
    return Intl.message(
      'You have completed today\'s courses',
      name: 'next_course_none',
      desc: '',
      args: [],
    );
  }

  /// `No Data`
  String get no_data {
    return Intl.message('No Data', name: 'no_data', desc: '', args: []);
  }

  /// `No data`
  String get no_data_error {
    return Intl.message('No data', name: 'no_data_error', desc: '', args: []);
  }

  /// `You have no favorites`
  String get no_favorites {
    return Intl.message(
      'You have no favorites',
      name: 'no_favorites',
      desc: '',
      args: [],
    );
  }

  /// `There is no scheduled bus for your campus`
  String get no_matching_bus {
    return Intl.message(
      'There is no scheduled bus for your campus',
      name: 'no_matching_bus',
      desc: '',
      args: [],
    );
  }

  /// `The course has no reviews yet`
  String get no_course_review {
    return Intl.message(
      'The course has no reviews yet',
      name: 'no_course_review',
      desc: '',
      args: [],
    );
  }

  /// `You have no subscriptions`
  String get no_subscriptions {
    return Intl.message(
      'You have no subscriptions',
      name: 'no_subscriptions',
      desc: '',
      args: [],
    );
  }

  /// `Agenda is unavailable for students not in Fudan.`
  String get not_fudan_student {
    return Intl.message(
      'Agenda is unavailable for students not in Fudan.',
      name: 'not_fudan_student',
      desc: '',
      args: [],
    );
  }

  /// `Offline`
  String get not_logged_in {
    return Intl.message('Offline', name: 'not_logged_in', desc: '', args: []);
  }

  /// `Your subscribed post was updated`
  String get notification_subscription {
    return Intl.message(
      'Your subscribed post was updated',
      name: 'notification_subscription',
      desc: '',
      args: [],
    );
  }

  /// `Subscription`
  String get notification_subscription_s {
    return Intl.message(
      'Subscription',
      name: 'notification_subscription_s',
      desc: '',
      args: [],
    );
  }

  /// `Your post was quoted`
  String get notification_mention {
    return Intl.message(
      'Your post was quoted',
      name: 'notification_mention',
      desc: '',
      args: [],
    );
  }

  /// `Quote`
  String get notification_mention_s {
    return Intl.message(
      'Quote',
      name: 'notification_mention_s',
      desc: '',
      args: [],
    );
  }

  /// `Your post has been deleted due to reports`
  String get notification_reported {
    return Intl.message(
      'Your post has been deleted due to reports',
      name: 'notification_reported',
      desc: '',
      args: [],
    );
  }

  /// `Report`
  String get notification_reported_s {
    return Intl.message(
      'Report',
      name: 'notification_reported_s',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notification_settings {
    return Intl.message(
      'Notifications',
      name: 'notification_settings',
      desc: '',
      args: [],
    );
  }

  /// `Obtaining information……`
  String get obtaining_information {
    return Intl.message(
      'Obtaining information……',
      name: 'obtaining_information',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message('OK', name: 'ok', desc: '', args: []);
  }

  /// `Older`
  String get older_announcement {
    return Intl.message(
      'Older',
      name: 'older_announcement',
      desc: '',
      args: [],
    );
  }

  /// `Show Only LZ`
  String get only_show_dz {
    return Intl.message(
      'Show Only LZ',
      name: 'only_show_dz',
      desc: '',
      args: [],
    );
  }

  /// `Open Source Software Licenses`
  String get open_source_software_licenses {
    return Intl.message(
      'Open Source Software Licenses',
      name: 'open_source_software_licenses',
      desc: '',
      args: [],
    );
  }

  /// `Operation Failed`
  String get operation_failed {
    return Intl.message(
      'Operation Failed',
      name: 'operation_failed',
      desc: '',
      args: [],
    );
  }

  /// `The operation completed successfully`
  String get operation_successful {
    return Intl.message(
      'The operation completed successfully',
      name: 'operation_successful',
      desc: '',
      args: [],
    );
  }

  /// `Paper and Other`
  String get other_types_exam {
    return Intl.message(
      'Paper and Other',
      name: 'other_types_exam',
      desc: '',
      args: [],
    );
  }

  /// `Our email is {email} .`
  String our_email_is(Object email) {
    return Intl.message(
      'Our email is $email .',
      name: 'our_email_is',
      desc: '',
      args: [email],
    );
  }

  /// `It's not dining time right now.`
  String get out_of_dining_time {
    return Intl.message(
      'It\'s not dining time right now.',
      name: 'out_of_dining_time',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `PE Exercises`
  String get pe_exercises {
    return Intl.message(
      'PE Exercises',
      name: 'pe_exercises',
      desc: '',
      args: [],
    );
  }

  /// `Percentile`
  String get percentile {
    return Intl.message('Percentile', name: 'percentile', desc: '', args: []);
  }

  /// `Pin/Unpin Post`
  String get pin_unpin_hole {
    return Intl.message(
      'Pin/Unpin Post',
      name: 'pin_unpin_hole',
      desc: '',
      args: [],
    );
  }

  /// `Pinned`
  String get pinned {
    return Intl.message('Pinned', name: 'pinned', desc: '', args: []);
  }

  /// `The requested post does not exist.`
  String get post_does_not_exist {
    return Intl.message(
      'The requested post does not exist.',
      name: 'post_does_not_exist',
      desc: '',
      args: [],
    );
  }

  /// `We do not recommend sending a post with no tags. Do you really want to send?`
  String get post_has_no_tags {
    return Intl.message(
      'We do not recommend sending a post with no tags. Do you really want to send?',
      name: 'post_has_no_tags',
      desc: '',
      args: [],
    );
  }

  /// `No tags`
  String get post_has_no_tags_title {
    return Intl.message(
      'No tags',
      name: 'post_has_no_tags_title',
      desc: '',
      args: [],
    );
  }

  /// `Post time：{time}`
  String post_time(Object time) {
    return Intl.message(
      'Post time：$time',
      name: 'post_time',
      desc: '',
      args: [time],
    );
  }

  /// `Click here to log in Campus Schedule System`
  String get postgraduates_need_login {
    return Intl.message(
      'Click here to log in Campus Schedule System',
      name: 'postgraduates_need_login',
      desc: '',
      args: [],
    );
  }

  /// `Posting...`
  String get posting {
    return Intl.message('Posting...', name: 'posting', desc: '', args: []);
  }

  /// `Preview`
  String get preview {
    return Intl.message('Preview', name: 'preview', desc: '', args: []);
  }

  /// `Privacy Policy and License Agreements`
  String get privacy_policy {
    return Intl.message(
      'Privacy Policy and License Agreements',
      name: 'privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `https://danxi.fduhole.com/privacy`
  String get privacy_policy_url {
    return Intl.message(
      'https://danxi.fduhole.com/privacy',
      name: 'privacy_policy_url',
      desc: '',
      args: [],
    );
  }

  /// `Project Page`
  String get project_page {
    return Intl.message(
      'Project Page',
      name: 'project_page',
      desc: '',
      args: [],
    );
  }

  /// `https://danxi.fduhole.com`
  String get project_url {
    return Intl.message(
      'https://danxi.fduhole.com',
      name: 'project_url',
      desc: '',
      args: [],
    );
  }

  /// `Push Notification Registeration Failed`
  String get push_notification_reg_failed {
    return Intl.message(
      'Push Notification Registeration Failed',
      name: 'push_notification_reg_failed',
      desc: '',
      args: [],
    );
  }

  /// `You may not be able to receive notifications.\nError: {error}`
  String push_notification_reg_failed_des(Object error) {
    return Intl.message(
      'You may not be able to receive notifications.\nError: $error',
      name: 'push_notification_reg_failed_des',
      desc: '',
      args: [error],
    );
  }

  /// `Quote`
  String get quote {
    return Intl.message('Quote', name: 'quote', desc: '', args: []);
  }

  /// `To use QRCode, you must accept terms and conditions in webpage`
  String get qr_code_terms_not_agreed {
    return Intl.message(
      'To use QRCode, you must accept terms and conditions in webpage',
      name: 'qr_code_terms_not_agreed',
      desc: '',
      args: [],
    );
  }

  /// `Rank`
  String get rank {
    return Intl.message('Rank', name: 'rank', desc: '', args: []);
  }

  /// `Rate Us`
  String get rate {
    return Intl.message('Rate Us', name: 'rate', desc: '', args: []);
  }

  /// `Re-login`
  String get re_login {
    return Intl.message('Re-login', name: 're_login', desc: '', args: []);
  }

  /// `Read Dev Team Announcements`
  String get read_announcements {
    return Intl.message(
      'Read Dev Team Announcements',
      name: 'read_announcements',
      desc: '',
      args: [],
    );
  }

  /// `Reason for reporting #{id}`
  String reason_report_post(Object id) {
    return Intl.message(
      'Reason for reporting #$id',
      name: 'reason_report_post',
      desc: '',
      args: [id],
    );
  }

  /// `Recommended Tags`
  String get recommended_tags {
    return Intl.message(
      'Recommended Tags',
      name: 'recommended_tags',
      desc: '',
      args: [],
    );
  }

  /// `[Experimental] Recommend tags when posting`
  String get recommended_tags_availibity {
    return Intl.message(
      '[Experimental] Recommend tags when posting',
      name: 'recommended_tags_availibity',
      desc: '',
      args: [],
    );
  }

  /// `WARNING: This is an experimental feature. Recommendations may be incorrect or inappropriate, and are for reference only. If you find the recommendations inappropriate, please report to dev@danta.tech .\n\nAll data is processed locally and is not uploaded to our servers.\n\nModel Version: 0.1a (CoreML)\n\nAvailability: iOS 14.0 and higher`
  String get recommended_tags_description {
    return Intl.message(
      'WARNING: This is an experimental feature. Recommendations may be incorrect or inappropriate, and are for reference only. If you find the recommendations inappropriate, please report to dev@danta.tech .\n\nAll data is processed locally and is not uploaded to our servers.\n\nModel Version: 0.1a (CoreML)\n\nAvailability: iOS 14.0 and higher',
      name: 'recommended_tags_description',
      desc: '',
      args: [],
    );
  }

  /// `Refresh`
  String get refresh {
    return Intl.message('Refresh', name: 'refresh', desc: '', args: []);
  }

  /// `Registration successful`
  String get registration_succeed {
    return Intl.message(
      'Registration successful',
      name: 'registration_succeed',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure to remove this favorite?`
  String get remove_favorite_hole_confirmation {
    return Intl.message(
      'Are you sure to remove this favorite?',
      name: 'remove_favorite_hole_confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure to remove this subscription?`
  String get remove_subscribed_hole_confirmation {
    return Intl.message(
      'Are you sure to remove this subscription?',
      name: 'remove_subscribed_hole_confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Reply failed`
  String get reply_failed {
    return Intl.message(
      'Reply failed',
      name: 'reply_failed',
      desc: '',
      args: [],
    );
  }

  /// `Reply #{name}`
  String reply_to(Object name) {
    return Intl.message(
      'Reply #$name',
      name: 'reply_to',
      desc: '',
      args: [name],
    );
  }

  /// `Reply ##{name}`
  String reply_to_floor(Object name) {
    return Intl.message(
      'Reply ##$name',
      name: 'reply_to_floor',
      desc: '',
      args: [name],
    );
  }

  /// `Report`
  String get report {
    return Intl.message('Report', name: 'report', desc: '', args: []);
  }

  /// `Report failed`
  String get report_failed {
    return Intl.message(
      'Report failed',
      name: 'report_failed',
      desc: '',
      args: [],
    );
  }

  /// `Report successful. Thank you for your contribution to our community.`
  String get report_success {
    return Intl.message(
      'Report successful. Thank you for your contribution to our community.',
      name: 'report_success',
      desc: '',
      args: [],
    );
  }

  /// `Reports`
  String get reports {
    return Intl.message('Reports', name: 'reports', desc: '', args: []);
  }

  /// `Request successful`
  String get request_success {
    return Intl.message(
      'Request successful',
      name: 'request_success',
      desc: '',
      args: [],
    );
  }

  /// `You need to log in first.`
  String get require_login {
    return Intl.message(
      'You need to log in first.',
      name: 'require_login',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get reset {
    return Intl.message('Reset', name: 'reset', desc: '', args: []);
  }

  /// `Reset Layout`
  String get reset_layout {
    return Intl.message(
      'Reset Layout',
      name: 'reset_layout',
      desc: '',
      args: [],
    );
  }

  /// `Server returned an error code: `
  String get response_error {
    return Intl.message(
      'Server returned an error code: ',
      name: 'response_error',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message('Retry', name: 'retry', desc: '', args: []);
  }

  /// `Please keep your information below carefully`
  String get save_your_information {
    return Intl.message(
      'Please keep your information below carefully',
      name: 'save_your_information',
      desc: '',
      args: [],
    );
  }

  /// `School Bus`
  String get school_bus {
    return Intl.message('School Bus', name: 'school_bus', desc: '', args: []);
  }

  /// `Only showing buses scheduled after {hh}:{mm}`
  String school_bus_not_showing_all(Object hh, Object mm) {
    return Intl.message(
      'Only showing buses scheduled after $hh:$mm',
      name: 'school_bus_not_showing_all',
      desc: '',
      args: [hh, mm],
    );
  }

  /// `Showing all buses`
  String get school_bus_showing_all {
    return Intl.message(
      'Showing all buses',
      name: 'school_bus_showing_all',
      desc: '',
      args: [],
    );
  }

  /// `Tap to filter buses scheduled after {hh}:{mm}`
  String school_bus_tap_to_not_show_all(Object hh, Object mm) {
    return Intl.message(
      'Tap to filter buses scheduled after $hh:$mm',
      name: 'school_bus_tap_to_not_show_all',
      desc: '',
      args: [hh, mm],
    );
  }

  /// `Tap this reminder to show all`
  String get school_bus_tap_to_show_all {
    return Intl.message(
      'Tap this reminder to show all',
      name: 'school_bus_tap_to_show_all',
      desc: '',
      args: [],
    );
  }

  /// `To ensure data security and to protect the privacy of other users, please do not send screenshots to any other platform. Thank you for your cooperation.`
  String get screenshot_warning {
    return Intl.message(
      'To ensure data security and to protect the privacy of other users, please do not send screenshots to any other platform. Thank you for your cooperation.',
      name: 'screenshot_warning',
      desc: '',
      args: [],
    );
  }

  /// `Screenshot Detected`
  String get screenshot_warning_title {
    return Intl.message(
      'Screenshot Detected',
      name: 'screenshot_warning_title',
      desc: '',
      args: [],
    );
  }

  /// `Go to Bottom`
  String get scroll_to_end {
    return Intl.message(
      'Go to Bottom',
      name: 'scroll_to_end',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message('Search', name: 'search', desc: '', args: []);
  }

  /// `Go to the floor {floorId}`
  String search_by_floor_tip(Object floorId) {
    return Intl.message(
      'Go to the floor $floorId',
      name: 'search_by_floor_tip',
      desc: '',
      args: [floorId],
    );
  }

  /// `Go to the post {pid}`
  String search_by_pid_tip(Object pid) {
    return Intl.message(
      'Go to the post $pid',
      name: 'search_by_pid_tip',
      desc: '',
      args: [pid],
    );
  }

  /// `See posts with tag "{tag}" in this division`
  String search_by_tag_tip(Object tag) {
    return Intl.message(
      'See posts with tag "$tag" in this division',
      name: 'search_by_tag_tip',
      desc: '',
      args: [tag],
    );
  }

  /// `Search "{searchKeyword}" in content`
  String search_by_text_tip(Object searchKeyword) {
    return Intl.message(
      'Search "$searchKeyword" in content',
      name: 'search_by_text_tip',
      desc: '',
      args: [searchKeyword],
    );
  }

  /// `Exactly search "{searchKeyword}" in content`
  String search_by_text_accurate_tip(Object searchKeyword) {
    return Intl.message(
      'Exactly search "$searchKeyword" in content',
      name: 'search_by_text_accurate_tip',
      desc: '',
      args: [searchKeyword],
    );
  }

  /// `Search or #PID`
  String get search_hint {
    return Intl.message(
      'Search or #PID',
      name: 'search_hint',
      desc: '',
      args: [],
    );
  }

  /// `Search Result`
  String get search_result {
    return Intl.message(
      'Search Result',
      name: 'search_result',
      desc: '',
      args: [],
    );
  }

  /// `{seats} seats`
  String seats(Object seats) {
    return Intl.message('$seats seats', name: 'seats', desc: '', args: [seats]);
  }

  /// `{num} sec ago`
  String second_ago(Object num) {
    return Intl.message(
      '$num sec ago',
      name: 'second_ago',
      desc: '',
      args: [num],
    );
  }

  /// `OTP code`
  String get secure_code {
    return Intl.message('OTP code', name: 'secure_code', desc: '', args: []);
  }

  /// `Secure Verification`
  String get secure_verification {
    return Intl.message(
      'Secure Verification',
      name: 'secure_verification',
      desc: '',
      args: [],
    );
  }

  /// `We have just sent you an email with an OTP code, input it below.`
  String get secure_verification_description {
    return Intl.message(
      'We have just sent you an email with an OTP code, input it below.',
      name: 'secure_verification_description',
      desc: '',
      args: [],
    );
  }

  /// `Select Timetable Semester`
  String get select_semester {
    return Intl.message(
      'Select Timetable Semester',
      name: 'select_semester',
      desc: '',
      args: [],
    );
  }

  /// `Select Tags`
  String get select_tags {
    return Intl.message('Select Tags', name: 'select_tags', desc: '', args: []);
  }

  /// `{schoolYear}学年 {semName}学期`
  String semester(Object schoolYear, Object semName) {
    return Intl.message(
      '$schoolYear学年 $semName学期',
      name: 'semester',
      desc: '',
      args: [schoolYear, semName],
    );
  }

  /// `The semester start date is usually a Monday, while the date you selected is not. Do you really want to set it to this date?`
  String get semester_start_at_monday {
    return Intl.message(
      'The semester start date is usually a Monday, while the date you selected is not. Do you really want to set it to this date?',
      name: 'semester_start_at_monday',
      desc: '',
      args: [],
    );
  }

  /// `Set semester start date: `
  String get semester_start_date {
    return Intl.message(
      'Set semester start date: ',
      name: 'semester_start_date',
      desc: '',
      args: [],
    );
  }

  /// `Send Email`
  String get send_email {
    return Intl.message('Send Email', name: 'send_email', desc: '', args: []);
  }

  /// `Set A Password`
  String get set_password {
    return Intl.message(
      'Set A Password',
      name: 'set_password',
      desc: '',
      args: [],
    );
  }

  /// `Set a password for your Danta Account`
  String get set_your_danxi_password {
    return Intl.message(
      'Set a password for your Danta Account',
      name: 'set_your_danxi_password',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message('Settings', name: 'settings', desc: '', args: []);
  }

  /// `Share`
  String get share {
    return Intl.message('Share', name: 'share', desc: '', args: []);
  }

  /// `Export as ICS`
  String get share_as_ics {
    return Intl.message(
      'Export as ICS',
      name: 'share_as_ics',
      desc: '',
      args: [],
    );
  }

  /// `Show`
  String get show {
    return Intl.message('Show', name: 'show', desc: '', args: []);
  }

  /// `Show All`
  String get show_all {
    return Intl.message('Show All', name: 'show_all', desc: '', args: []);
  }

  /// `Show All`
  String get show_all_replies {
    return Intl.message(
      'Show All',
      name: 'show_all_replies',
      desc: '',
      args: [],
    );
  }

  /// `Show Hidden Dashboard Notifications`
  String get show_hidden_notifications {
    return Intl.message(
      'Show Hidden Dashboard Notifications',
      name: 'show_hidden_notifications',
      desc: '',
      args: [],
    );
  }

  /// `Click to restore all hidden notifications on the dashboard`
  String get show_hidden_notifications_description {
    return Intl.message(
      'Click to restore all hidden notifications on the dashboard',
      name: 'show_hidden_notifications_description',
      desc: '',
      args: [],
    );
  }

  /// `Show Unread`
  String get show_unread {
    return Intl.message('Show Unread', name: 'show_unread', desc: '', args: []);
  }

  /// `Due to policy violations, you have been banned from posting in this division.\n\nIf you believe this is an error, please contact us at admin@danta.tech`
  String get silence_detail {
    return Intl.message(
      'Due to policy violations, you have been banned from posting in this division.\n\nIf you believe this is an error, please contact us at admin@danta.tech',
      name: 'silence_detail',
      desc: '',
      args: [],
    );
  }

  /// `No Permission to Post`
  String get silence_notice {
    return Intl.message(
      'No Permission to Post',
      name: 'silence_notice',
      desc: '',
      args: [],
    );
  }

  /// `Simplified Chinese`
  String get simplified_chinese_language {
    return Intl.message(
      'Simplified Chinese',
      name: 'simplified_chinese_language',
      desc: '',
      args: [],
    );
  }

  /// `Master Chief 117`
  String get singularity_s0_description {
    return Intl.message(
      'Master Chief 117',
      name: 'singularity_s0_description',
      desc: '',
      args: [],
    );
  }

  /// `SJTU Student`
  String get sjtu_student {
    return Intl.message(
      'SJTU Student',
      name: 'sjtu_student',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message('Skip', name: 'skip', desc: '', args: []);
  }

  /// `Sort order`
  String get sort_order {
    return Intl.message('Sort order', name: 'sort_order', desc: '', args: []);
  }

  /// `Submit`
  String get submit {
    return Intl.message('Submit', name: 'submit', desc: '', args: []);
  }

  /// `Subscriptions`
  String get subscriptions {
    return Intl.message(
      'Subscriptions',
      name: 'subscriptions',
      desc: '',
      args: [],
    );
  }

  /// `Least Crowded`
  String get tag_least_crowded {
    return Intl.message(
      'Least Crowded',
      name: 'tag_least_crowded',
      desc: '',
      args: [],
    );
  }

  /// `Most Crowded`
  String get tag_most_crowded {
    return Intl.message(
      'Most Crowded',
      name: 'tag_most_crowded',
      desc: '',
      args: [],
    );
  }

  /// `Tap to show preview`
  String get tap_to_show_preview {
    return Intl.message(
      'Tap to show preview',
      name: 'tap_to_show_preview',
      desc: '',
      args: [],
    );
  }

  /// `Tap to view`
  String get tap_to_view {
    return Intl.message('Tap to view', name: 'tap_to_view', desc: '', args: []);
  }

  /// `Your use of this application is governed under `
  String get terms_and_conditions_content {
    return Intl.message(
      'Your use of this application is governed under ',
      name: 'terms_and_conditions_content',
      desc: '',
      args: [],
    );
  }

  /// `. By logging in, you indicate that you have read and consent to these policies. `
  String get terms_and_conditions_content_end {
    return Intl.message(
      '. By logging in, you indicate that you have read and consent to these policies. ',
      name: 'terms_and_conditions_content_end',
      desc: '',
      args: [],
    );
  }

  /// `Legal`
  String get terms_and_conditions_title {
    return Intl.message(
      'Legal',
      name: 'terms_and_conditions_title',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get theme {
    return Intl.message('Theme', name: 'theme', desc: '', args: []);
  }

  /// `Theming`
  String get theme_color {
    return Intl.message('Theming', name: 'theme_color', desc: '', args: []);
  }

  /// `Customize theme color`
  String get theme_color_description {
    return Intl.message(
      'Customize theme color',
      name: 'theme_color_description',
      desc: '',
      args: [],
    );
  }

  /// `Choose a preset color or custom color to switch the theme color`
  String get theme_color_description_detail {
    return Intl.message(
      'Choose a preset color or custom color to switch the theme color',
      name: 'theme_color_description_detail',
      desc: '',
      args: [],
    );
  }

  /// `Theme Type`
  String get theme_type {
    return Intl.message('Theme Type', name: 'theme_type', desc: '', args: []);
  }

  /// `Dark`
  String get theme_type_dark {
    return Intl.message('Dark', name: 'theme_type_dark', desc: '', args: []);
  }

  /// `Light`
  String get theme_type_light {
    return Intl.message('Light', name: 'theme_type_light', desc: '', args: []);
  }

  /// `System`
  String get theme_type_system {
    return Intl.message(
      'System',
      name: 'theme_type_system',
      desc: '',
      args: [],
    );
  }

  /// `Agenda`
  String get timetable {
    return Intl.message('Agenda', name: 'timetable', desc: '', args: []);
  }

  /// `Last Updated Time: `
  String get timetable_last_updated {
    return Intl.message(
      'Last Updated Time: ',
      name: 'timetable_last_updated',
      desc: '',
      args: [],
    );
  }

  /// `Unavailable`
  String get timetable_no_last_updated {
    return Intl.message(
      'Unavailable',
      name: 'timetable_no_last_updated',
      desc: '',
      args: [],
    );
  }

  /// `Note: Your Danta Account is not your UIS or Edu-email account.`
  String get tip_that_danxi_is_not_fdu {
    return Intl.message(
      'Note: Your Danta Account is not your UIS or Edu-email account.',
      name: 'tip_that_danxi_is_not_fdu',
      desc: '',
      args: [],
    );
  }

  /// `Courses Today`
  String get today_course {
    return Intl.message(
      'Courses Today',
      name: 'today_course',
      desc: '',
      args: [],
    );
  }

  /// `Traditional Chinese`
  String get traditional_chinese_language {
    return Intl.message(
      'Traditional Chinese',
      name: 'traditional_chinese_language',
      desc: '',
      args: [],
    );
  }

  /// `Test connection failed\nCan't to connect to this website, please check your URL.`
  String get unable_to_access_url {
    return Intl.message(
      'Test connection failed\nCan\'t to connect to this website, please check your URL.',
      name: 'unable_to_access_url',
      desc: '',
      args: [],
    );
  }

  /// `Unable to find the quoted reply.`
  String get unable_to_find_quote {
    return Intl.message(
      'Unable to find the quoted reply.',
      name: 'unable_to_find_quote',
      desc: '',
      args: [],
    );
  }

  /// `Unauthorized`
  String get unauthorized {
    return Intl.message(
      'Unauthorized',
      name: 'unauthorized',
      desc: '',
      args: [],
    );
  }

  /// `Unavailable`
  String get unavailable {
    return Intl.message('Unavailable', name: 'unavailable', desc: '', args: []);
  }

  /// `Unable to connect to the Fudan Campus Intranet, so we cannot log in now.\nYou can use the campus VPN (Easy Connect) to access the Campus Intranet.`
  String get under_maintenance {
    return Intl.message(
      'Unable to connect to the Fudan Campus Intranet, so we cannot log in now.\nYou can use the campus VPN (Easy Connect) to access the Campus Intranet.',
      name: 'under_maintenance',
      desc: '',
      args: [],
    );
  }

  /// `Unknown Error`
  String get unknown_error {
    return Intl.message(
      'Unknown Error',
      name: 'unknown_error',
      desc: '',
      args: [],
    );
  }

  /// `The start date for semester ({semesterName}) is unknown. Please set start date manually.`
  String unknown_start_date(Object semesterName) {
    return Intl.message(
      'The start date for semester ($semesterName) is unknown. Please set start date manually.',
      name: 'unknown_start_date',
      desc: '',
      args: [semesterName],
    );
  }

  /// `This object cannot be moved`
  String get unmovable_widget {
    return Intl.message(
      'This object cannot be moved',
      name: 'unmovable_widget',
      desc: '',
      args: [],
    );
  }

  /// `Unsupported on this device`
  String get unsupported {
    return Intl.message(
      'Unsupported on this device',
      name: 'unsupported',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get update_now {
    return Intl.message('Update', name: 'update_now', desc: '', args: []);
  }

  /// `Uploading image...`
  String get uploading_image {
    return Intl.message(
      'Uploading image...',
      name: 'uploading_image',
      desc: '',
      args: [],
    );
  }

  /// `Failed to upload image`
  String get uploading_image_failed {
    return Intl.message(
      'Failed to upload image',
      name: 'uploading_image_failed',
      desc: '',
      args: [],
    );
  }

  /// `Version`
  String get version {
    return Intl.message('Version', name: 'version', desc: '', args: []);
  }

  /// `Views: {view}`
  String view_count(Object view) {
    return Intl.message(
      'Views: $view',
      name: 'view_count',
      desc: '',
      args: [view],
    );
  }

  /// `View History`
  String get view_history {
    return Intl.message(
      'View History',
      name: 'view_history',
      desc: '',
      args: [],
    );
  }

  /// `This app is made possible thanks to various open-source software. View `
  String get view_ossl {
    return Intl.message(
      'This app is made possible thanks to various open-source software. View ',
      name: 'view_ossl',
      desc: '',
      args: [],
    );
  }

  /// `Danta Founder / Developer`
  String get w568w_description {
    return Intl.message(
      'Danta Founder / Developer',
      name: 'w568w_description',
      desc: '',
      args: [],
    );
  }

  /// `Warning`
  String get warning {
    return Intl.message('Warning', name: 'warning', desc: '', args: []);
  }

  /// `Login failed. Unknown error.\nNote: Danta does not support weak password. If UIS warns of weak password at login, please change your password at UIS Portal and try again.`
  String get weak_password {
    return Intl.message(
      'Login failed. Unknown error.\nNote: Danta does not support weak password. If UIS warns of weak password at login, please change your password at UIS Portal and try again.',
      name: 'weak_password',
      desc: '',
      args: [],
    );
  }

  /// `Week {week}`
  String week(Object week) {
    return Intl.message('Week $week', name: 'week', desc: '', args: [week]);
  }

  /// `Weekday`
  String get weekday {
    return Intl.message('Weekday', name: 'weekday', desc: '', args: []);
  }

  /// `Welcome, {name}`
  String welcome(Object name) {
    return Intl.message(
      'Welcome, $name',
      name: 'welcome',
      desc: '',
      args: [name],
    );
  }

  /// `Stay Updated`
  String get welcome_1 {
    return Intl.message('Stay Updated', name: 'welcome_1', desc: '', args: []);
  }

  /// `Notifications to keep you updated`
  String get welcome_1s {
    return Intl.message(
      'Notifications to keep you updated',
      name: 'welcome_1s',
      desc: '',
      args: [],
    );
  }

  /// `Discuss by Topic`
  String get welcome_2 {
    return Intl.message(
      'Discuss by Topic',
      name: 'welcome_2',
      desc: '',
      args: [],
    );
  }

  /// `More focused discussions enabled by more specific topic system`
  String get welcome_2s {
    return Intl.message(
      'More focused discussions enabled by more specific topic system',
      name: 'welcome_2s',
      desc: '',
      args: [],
    );
  }

  /// `Notations Made Simple`
  String get welcome_3 {
    return Intl.message(
      'Notations Made Simple',
      name: 'welcome_3',
      desc: '',
      args: [],
    );
  }

  /// `Use LaTeX and Markdown in your posts`
  String get welcome_3s {
    return Intl.message(
      'Use LaTeX and Markdown in your posts',
      name: 'welcome_3s',
      desc: '',
      args: [],
    );
  }

  /// `Welcome back`
  String get welcome_back {
    return Intl.message(
      'Welcome back',
      name: 'welcome_back',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcome_feature {
    return Intl.message('Welcome', name: 'welcome_feature', desc: '', args: []);
  }

  /// `Welcome to the forum`
  String get welcome_to_forum {
    return Intl.message(
      'Welcome to the forum',
      name: 'welcome_to_forum',
      desc: '',
      args: [],
    );
  }

  /// `Automatically start Danta on boot`
  String get windows_auto_start_description {
    return Intl.message(
      'Automatically start Danta on boot',
      name: 'windows_auto_start_description',
      desc: '',
      args: [],
    );
  }

  /// `Auto start`
  String get windows_auto_start_title {
    return Intl.message(
      'Auto start',
      name: 'windows_auto_start_title',
      desc: '',
      args: [],
    );
  }

  /// `You should have seen the UAC Permission Confirm window. \n After allowing, click "OK" below to confirm the setup.`
  String get windows_auto_start_wait_dialog_message {
    return Intl.message(
      'You should have seen the UAC Permission Confirm window. \n After allowing, click "OK" below to confirm the setup.',
      name: 'windows_auto_start_wait_dialog_message',
      desc: '',
      args: [],
    );
  }

  /// `Wait for permission`
  String get windows_auto_start_wait_dialog_title {
    return Intl.message(
      'Wait for permission',
      name: 'windows_auto_start_wait_dialog_title',
      desc: '',
      args: [],
    );
  }

  /// `Your GPA`
  String get your_gpa {
    return Intl.message('Your GPA', name: 'your_gpa', desc: '', args: []);
  }

  /// `Rank: {rank}, Credits: {credits}, Tap to View Details`
  String your_gpa_subtitle(Object rank, Object credits) {
    return Intl.message(
      'Rank: $rank, Credits: $credits, Tap to View Details',
      name: 'your_gpa_subtitle',
      desc: '',
      args: [rank, credits],
    );
  }

  /// `Zhangjiang`
  String get zhangjiang_campus {
    return Intl.message(
      'Zhangjiang',
      name: 'zhangjiang_campus',
      desc: '',
      args: [],
    );
  }

  /// `Message`
  String get forum_message {
    return Intl.message('Message', name: 'forum_message', desc: '', args: []);
  }

  /// `Share Floor As Text`
  String get share_floor {
    return Intl.message(
      'Share Floor As Text',
      name: 'share_floor',
      desc: '',
      args: [],
    );
  }

  /// `Share Post As Text`
  String get share_hole {
    return Intl.message(
      'Share Post As Text',
      name: 'share_hole',
      desc: '',
      args: [],
    );
  }

  /// `Share Post success! Please check your clipboard.`
  String get shareHoleSuccess {
    return Intl.message(
      'Share Post success! Please check your clipboard.',
      name: 'shareHoleSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Share floor success! Please check your clipboard.`
  String get shareFloorSuccess {
    return Intl.message(
      'Share floor success! Please check your clipboard.',
      name: 'shareFloorSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Invalid uri`
  String get invalidUri {
    return Intl.message('Invalid uri', name: 'invalidUri', desc: '', args: []);
  }

  /// `No element found to jump to`
  String get elementNotFound {
    return Intl.message(
      'No element found to jump to',
      name: 'elementNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Danta Care`
  String get danxi_care {
    return Intl.message('Danta Care', name: 'danxi_care', desc: '', args: []);
  }

  /// `It could be that the ache of life surpasses the contemplation of harming yourself, or perhaps the absence of those you can confide in has left you adrift. However, when confidants seem distant, remember that we are here to support you. Sharing your journey, thoughts, and emotions might unveil a clearer perspective, guiding you through the complex maze of life.\n\nYou are not going through this alone. While our team at Danta may not have certified mental health professionals, we've assembled a comprehensive ["Danta Mental Health Toolkit"](https://danxi-dev.feishu.cn/docx/Trr5dEPfjoC97HxRklKccr1Ynyd?from=from_copylink) designed for your well-being in mind. I strongly encourage you to explore its resources, and also feel free to reach out to us at [danta@danta.tech](mailto:danta@danta.tech) whenever you're comfortable. We're here to offer immediate assistance, as you're never far from a helping hand.`
  String get danxi_care_message {
    return Intl.message(
      'It could be that the ache of life surpasses the contemplation of harming yourself, or perhaps the absence of those you can confide in has left you adrift. However, when confidants seem distant, remember that we are here to support you. Sharing your journey, thoughts, and emotions might unveil a clearer perspective, guiding you through the complex maze of life.\n\nYou are not going through this alone. While our team at Danta may not have certified mental health professionals, we\'ve assembled a comprehensive ["Danta Mental Health Toolkit"](https://danxi-dev.feishu.cn/docx/Trr5dEPfjoC97HxRklKccr1Ynyd?from=from_copylink) designed for your well-being in mind. I strongly encourage you to explore its resources, and also feel free to reach out to us at [danta@danta.tech](mailto:danta@danta.tech) whenever you\'re comfortable. We\'re here to offer immediate assistance, as you\'re never far from a helping hand.',
      name: 'danxi_care_message',
      desc: '',
      args: [],
    );
  }

  /// `My Posts`
  String get list_my_posts {
    return Intl.message('My Posts', name: 'list_my_posts', desc: '', args: []);
  }

  /// `My Replies`
  String get list_my_replies {
    return Intl.message(
      'My Replies',
      name: 'list_my_replies',
      desc: '',
      args: [],
    );
  }

  /// `View History (Local)`
  String get list_view_history {
    return Intl.message(
      'View History (Local)',
      name: 'list_view_history',
      desc: '',
      args: [],
    );
  }

  /// `My Punishments`
  String get list_my_punishments {
    return Intl.message(
      'My Punishments',
      name: 'list_my_punishments',
      desc: '',
      args: [],
    );
  }

  /// `Stop Multi-Select`
  String get multiple_select_mode_exit {
    return Intl.message(
      'Stop Multi-Select',
      name: 'multiple_select_mode_exit',
      desc: '',
      args: [],
    );
  }

  /// `Start Multi-Select`
  String get multiple_select_mode_enter {
    return Intl.message(
      'Start Multi-Select',
      name: 'multiple_select_mode_enter',
      desc: '',
      args: [],
    );
  }

  /// `Copy Floor ID`
  String get copy_floor_id {
    return Intl.message(
      'Copy Floor ID',
      name: 'copy_floor_id',
      desc: '',
      args: [],
    );
  }

  /// `Copy Floor ID success! Please check your clipboard. `
  String get copy_floor_id_success {
    return Intl.message(
      'Copy Floor ID success! Please check your clipboard. ',
      name: 'copy_floor_id_success',
      desc: '',
      args: [],
    );
  }

  /// `Copy Post ID`
  String get copy_hole_id {
    return Intl.message(
      'Copy Post ID',
      name: 'copy_hole_id',
      desc: '',
      args: [],
    );
  }

  /// `Copy Post ID success! Please check your clipboard. `
  String get copy_hole_id_success {
    return Intl.message(
      'Copy Post ID success! Please check your clipboard. ',
      name: 'copy_hole_id_success',
      desc: '',
      args: [],
    );
  }

  /// `Choose semester:`
  String get choose_semester {
    return Intl.message(
      'Choose semester:',
      name: 'choose_semester',
      desc: '',
      args: [],
    );
  }

  /// `Select the semester you want to view. `
  String get choose_semester_message {
    return Intl.message(
      'Select the semester you want to view. ',
      name: 'choose_semester_message',
      desc: '',
      args: [],
    );
  }

  /// `Add lesson manually:`
  String get manually_add_course {
    return Intl.message(
      'Add lesson manually:',
      name: 'manually_add_course',
      desc: '',
      args: [],
    );
  }

  /// `If there is a class that is not included in the class schedule, but you want to check it, add it manually yourself. `
  String get manually_add_course_message {
    return Intl.message(
      'If there is a class that is not included in the class schedule, but you want to check it, add it manually yourself. ',
      name: 'manually_add_course_message',
      desc: '',
      args: [],
    );
  }

  /// `Semester start date query`
  String get start_date_select {
    return Intl.message(
      'Semester start date query',
      name: 'start_date_select',
      desc: '',
      args: [],
    );
  }

  /// `You must select the start date of the semester to view your class schedule. Not selecting will result in a date error. \nTip: Start date is the Monday of the first week. `
  String get start_date_select_message {
    return Intl.message(
      'You must select the start date of the semester to view your class schedule. Not selecting will result in a date error. \nTip: Start date is the Monday of the first week. ',
      name: 'start_date_select_message',
      desc: '',
      args: [],
    );
  }

  /// `Start quiz`
  String get start_quiz {
    return Intl.message('Start quiz', name: 'start_quiz', desc: '', args: []);
  }

  /// `You haven't read the community convention yet. Click the link below to read and then finish a mini-quiz. After answering all the questions correctly, you may continue to the forum. `
  String get quiz_not_answered {
    return Intl.message(
      'You haven\'t read the community convention yet. Click the link below to read and then finish a mini-quiz. After answering all the questions correctly, you may continue to the forum. ',
      name: 'quiz_not_answered',
      desc: '',
      args: [],
    );
  }

  /// `You have finished studying the community convention. Please keep observing it while using the forum. `
  String get quiz_completed {
    return Intl.message(
      'You have finished studying the community convention. Please keep observing it while using the forum. ',
      name: 'quiz_completed',
      desc: '',
      args: [],
    );
  }

  /// `In the quiz, you've answered {count} questions wrong. Please press the button to redo. `
  String quiz_has_errors(Object count) {
    return Intl.message(
      'In the quiz, you\'ve answered $count questions wrong. Please press the button to redo. ',
      name: 'quiz_has_errors',
      desc: '',
      args: [count],
    );
  }

  /// `Redo the questions`
  String get redo_incorrect_questions {
    return Intl.message(
      'Redo the questions',
      name: 'redo_incorrect_questions',
      desc: '',
      args: [],
    );
  }

  /// `Go on to the forum`
  String get enter_forum {
    return Intl.message(
      'Go on to the forum',
      name: 'enter_forum',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next_question {
    return Intl.message('Next', name: 'next_question', desc: '', args: []);
  }

  /// `Previous`
  String get prev_question {
    return Intl.message('Previous', name: 'prev_question', desc: '', args: []);
  }

  /// `Stickers`
  String get sticker {
    return Intl.message('Stickers', name: 'sticker', desc: '', args: []);
  }

  /// `[Sticker]`
  String get sticker_tag {
    return Intl.message('[Sticker]', name: 'sticker_tag', desc: '', args: []);
  }

  /// `Welcome to Danta!\n\nIf you are using Danta for the first time, perhaps you would like to take a look at the FAQ section?`
  String get welcome_prompt {
    return Intl.message(
      'Welcome to Danta!\n\nIf you are using Danta for the first time, perhaps you would like to take a look at the FAQ section?',
      name: 'welcome_prompt',
      desc: '',
      args: [],
    );
  }

  /// `Proxy Setting`
  String get proxy_setting {
    return Intl.message(
      'Proxy Setting',
      name: 'proxy_setting',
      desc: '',
      args: [],
    );
  }

  /// `Not Set`
  String get proxy_setting_unset {
    return Intl.message(
      'Not Set',
      name: 'proxy_setting_unset',
      desc: '',
      args: [],
    );
  }

  /// `Input HTTP Proxy`
  String get proxy_setting_input_title {
    return Intl.message(
      'Input HTTP Proxy',
      name: 'proxy_setting_input_title',
      desc: '',
      args: [],
    );
  }

  /// `e.g. 127.0.0.1:1234 (Leave blank to disable)`
  String get proxy_setting_input_hint {
    return Intl.message(
      'e.g. 127.0.0.1:1234 (Leave blank to disable)',
      name: 'proxy_setting_input_hint',
      desc: '',
      args: [],
    );
  }

  /// `Do not use proxies`
  String get proxy_setting_do_not_use {
    return Intl.message(
      'Do not use proxies',
      name: 'proxy_setting_do_not_use',
      desc: '',
      args: [],
    );
  }

  /// `Add a new proxy`
  String get proxy_setting_add_new {
    return Intl.message(
      'Add a new proxy',
      name: 'proxy_setting_add_new',
      desc: '',
      args: [],
    );
  }

  /// `Remove a proxy`
  String get proxy_setting_remove {
    return Intl.message(
      'Remove a proxy',
      name: 'proxy_setting_remove',
      desc: '',
      args: [],
    );
  }

  /// `Proxy already exists`
  String get proxy_setting_already_exists {
    return Intl.message(
      'Proxy already exists',
      name: 'proxy_setting_already_exists',
      desc: '',
      args: [],
    );
  }

  /// `Use WebVPN proxy`
  String get use_webvpn_title {
    return Intl.message(
      'Use WebVPN proxy',
      name: 'use_webvpn_title',
      desc: '',
      args: [],
    );
  }

  /// `When enabled, certain functions could be accessed directly without Fudan LAN (restart required)`
  String get use_webvpn_description {
    return Intl.message(
      'When enabled, certain functions could be accessed directly without Fudan LAN (restart required)',
      name: 'use_webvpn_description',
      desc: '',
      args: [],
    );
  }

  /// `Filter by this user`
  String get show_this_person {
    return Intl.message(
      'Filter by this user',
      name: 'show_this_person',
      desc: '',
      args: [],
    );
  }

  /// `Select All`
  String get select_all {
    return Intl.message('Select All', name: 'select_all', desc: '', args: []);
  }

  /// `Select the floors to share`
  String get share_hole_title {
    return Intl.message(
      'Select the floors to share',
      name: 'share_hole_title',
      desc: '',
      args: [],
    );
  }

  /// `Follow system color palette`
  String get follow_system_palette {
    return Intl.message(
      'Follow system color palette',
      name: 'follow_system_palette',
      desc: '',
      args: [],
    );
  }

  /// `Use Android's Material You dynamic colors based on your wallpaper`
  String get follow_system_palette_description {
    return Intl.message(
      'Use Android\'s Material You dynamic colors based on your wallpaper',
      name: 'follow_system_palette_description',
      desc: '',
      args: [],
    );
  }

  /// `Require setup in Agenda. Then refresh.`
  String get next_course_setup {
    return Intl.message(
      'Require setup in Agenda. Then refresh.',
      name: 'next_course_setup',
      desc: '',
      args: [],
    );
  }

  /// `Select date range`
  String get date_range_select {
    return Intl.message(
      'Select date range',
      name: 'date_range_select',
      desc: '',
      args: [],
    );
  }

  /// `Start date must be before end date`
  String get select_date_range_invalid_range {
    return Intl.message(
      'Start date must be before end date',
      name: 'select_date_range_invalid_range',
      desc: '',
      args: [],
    );
  }

  /// `From`
  String get select_date_range_from {
    return Intl.message(
      'From',
      name: 'select_date_range_from',
      desc: '',
      args: [],
    );
  }

  /// `To`
  String get select_date_range_to {
    return Intl.message('To', name: 'select_date_range_to', desc: '', args: []);
  }

  /// `Far Past`
  String get select_date_range_far_past {
    return Intl.message(
      'Far Past',
      name: 'select_date_range_far_past',
      desc: '',
      args: [],
    );
  }

  /// `Now`
  String get select_date_range_now {
    return Intl.message(
      'Now',
      name: 'select_date_range_now',
      desc: '',
      args: [],
    );
  }

  /// `Deleted`
  String get hole_force_deleted {
    return Intl.message(
      'Deleted',
      name: 'hole_force_deleted',
      desc: '',
      args: [],
    );
  }

  /// `Haptic Feedback`
  String get haptic_feedback {
    return Intl.message(
      'Haptic Feedback',
      name: 'haptic_feedback',
      desc: '',
      args: [],
    );
  }

  /// `Provide vibration feedback during interactions`
  String get haptic_feedback_description {
    return Intl.message(
      'Provide vibration feedback during interactions',
      name: 'haptic_feedback_description',
      desc: '',
      args: [],
    );
  }

  /// `Identity Service`
  String get identity_service {
    return Intl.message(
      'Identity Service',
      name: 'identity_service',
      desc: '',
      args: [],
    );
  }

  /// `Undergraduate Login`
  String get login_undergraduate {
    return Intl.message(
      'Undergraduate Login',
      name: 'login_undergraduate',
      desc: '',
      args: [],
    );
  }

  /// `Postgraduate Login`
  String get login_postgraduate {
    return Intl.message(
      'Postgraduate Login',
      name: 'login_postgraduate',
      desc: '',
      args: [],
    );
  }

  /// `Fudan UIS Login`
  String get login_uis {
    return Intl.message(
      'Fudan UIS Login',
      name: 'login_uis',
      desc: '',
      args: [],
    );
  }

  /// `Danta Account Login`
  String get login_danta_account {
    return Intl.message(
      'Danta Account Login',
      name: 'login_danta_account',
      desc: '',
      args: [],
    );
  }

  /// `Danta Community and Services`
  String get login_danta_community {
    return Intl.message(
      'Danta Community and Services',
      name: 'login_danta_community',
      desc: '',
      args: [],
    );
  }

  /// `By logging in, you agree to`
  String get login_agreement {
    return Intl.message(
      'By logging in, you agree to',
      name: 'login_agreement',
      desc: '',
      args: [],
    );
  }

  /// `Terms of Service and Privacy Policy`
  String get terms_and_privacy {
    return Intl.message(
      'Terms of Service and Privacy Policy',
      name: 'terms_and_privacy',
      desc: '',
      args: [],
    );
  }

  /// `Enter Application`
  String get enter_app {
    return Intl.message(
      'Enter Application',
      name: 'enter_app',
      desc: '',
      args: [],
    );
  }

  /// `Logged In`
  String get logged_in {
    return Intl.message('Logged In', name: 'logged_in', desc: '', args: []);
  }

  /// `Successfully hidden item`
  String get hide_post_success {
    return Intl.message(
      'Successfully hidden item',
      name: 'hide_post_success',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure to hide the item? you may restore hidden items through the button on the top-right corner. `
  String get hide_post_confirm {
    return Intl.message(
      'Are you sure to hide the item? you may restore hidden items through the button on the top-right corner. ',
      name: 'hide_post_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure to restore all hidden items? `
  String get restore_hidden_confirm {
    return Intl.message(
      'Are you sure to restore all hidden items? ',
      name: 'restore_hidden_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure to clear local view history? this cannot be reverted. `
  String get clear_history_confirm {
    return Intl.message(
      'Are you sure to clear local view history? this cannot be reverted. ',
      name: 'clear_history_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Please confirm before exporting:\n1. An error occurred recently during the current application session. If not, please reproduce the error first, then return here to export the log immediately;\n2. The developer requesting the log is a trusted individual. The log may contain your personal sensitive information (including login credentials), so please share with caution.\n\nConfirm to export the log?`
  String get export_log_confirmation {
    return Intl.message(
      'Please confirm before exporting:\n1. An error occurred recently during the current application session. If not, please reproduce the error first, then return here to export the log immediately;\n2. The developer requesting the log is a trusted individual. The log may contain your personal sensitive information (including login credentials), so please share with caution.\n\nConfirm to export the log?',
      name: 'export_log_confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Exporting logs…`
  String get export_log_exporting {
    return Intl.message(
      'Exporting logs…',
      name: 'export_log_exporting',
      desc: '',
      args: [],
    );
  }

  /// `Log file has been exported to a temporary file: {path}. Please send this file to a developer.`
  String export_log_to_path(Object path) {
    return Intl.message(
      'Log file has been exported to a temporary file: $path. Please send this file to a developer.',
      name: 'export_log_to_path',
      desc: '',
      args: [path],
    );
  }

  /// `Export successful`
  String get export_log_success {
    return Intl.message(
      'Export successful',
      name: 'export_log_success',
      desc: '',
      args: [],
    );
  }

  /// `Frozen`
  String get hole_frozen {
    return Intl.message('Frozen', name: 'hole_frozen', desc: '', args: []);
  }

  /// `Usage History`
  String get dorm_electricity_history {
    return Intl.message(
      'Usage History',
      name: 'dorm_electricity_history',
      desc: '',
      args: [],
    );
  }

  /// `The app has switched to the backup Data Center source, which is currently unavailable. Please restart the app or clear the cache and try again.`
  String get data_center_unavailable_2026_0117 {
    return Intl.message(
      'The app has switched to the backup Data Center source, which is currently unavailable. Please restart the app or clear the cache and try again.',
      name: 'data_center_unavailable_2026_0117',
      desc: '',
      args: [],
    );
  }

  /// `Spring`
  String get season_spring {
    return Intl.message('Spring', name: 'season_spring', desc: '', args: []);
  }

  /// `Summer`
  String get season_summer {
    return Intl.message('Summer', name: 'season_summer', desc: '', args: []);
  }

  /// `Autumn`
  String get season_autumn {
    return Intl.message('Autumn', name: 'season_autumn', desc: '', args: []);
  }

  /// `Winter`
  String get season_winter {
    return Intl.message('Winter', name: 'season_winter', desc: '', args: []);
  }

  /// `Parsing Campus Service API Failed`
  String get fudan_api_exception {
    return Intl.message(
      'Parsing Campus Service API Failed',
      name: 'fudan_api_exception',
      desc: '',
      args: [],
    );
  }

  /// `Please complete authentication in the browser...`
  String get enhanced_auth_waiting {
    return Intl.message(
      'Please complete authentication in the browser...',
      name: 'enhanced_auth_waiting',
      desc: '',
      args: [],
    );
  }

  /// `Two-Factor Authentication Required`
  String get enhanced_auth_title {
    return Intl.message(
      'Two-Factor Authentication Required',
      name: 'enhanced_auth_title',
      desc: '',
      args: [],
    );
  }

  /// `This campus service requires two-factor authentication (2FA).\nA browser will open with your credentials pre-filled. Please complete the verification in the browser.`
  String get enhanced_auth_description {
    return Intl.message(
      'This campus service requires two-factor authentication (2FA).\nA browser will open with your credentials pre-filled. Please complete the verification in the browser.',
      name: 'enhanced_auth_description',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get enhanced_auth_continue {
    return Intl.message(
      'Continue',
      name: 'enhanced_auth_continue',
      desc: '',
      args: [],
    );
  }

  /// `Verification incomplete. Some features may be temporarily unavailable.`
  String get enhanced_auth_cancelled {
    return Intl.message(
      'Verification incomplete. Some features may be temporarily unavailable.',
      name: 'enhanced_auth_cancelled',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ja'),
      Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'),
      Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
