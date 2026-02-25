import 'pubspec.yaml.g.dart' as p;

class _PubspecVersionCompat {
  const _PubspecVersionCompat();

  int get major => p.major;
  int get minor => p.minor;
  int get patch => p.patch;
  List<String> get build => p.build;
  String get canonical => p.version;
}

class Pubspec {
  static const _PubspecVersionCompat version = _PubspecVersionCompat();
}
