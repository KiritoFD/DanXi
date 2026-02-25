import 'pubspec.yaml.g.dart' as p;

class _PubspecVersionCompat {
  const _PubspecVersionCompat();

  String get canonical {
    final Object? source = p.source;
    if (source is Map && source['version'] is String) {
      return source['version'] as String;
    }
    return '0.0.0+0';
  }

  int get major => _parseCore()[0];
  int get minor => _parseCore()[1];
  int get patch => _parseCore()[2];

  List<String> get build {
    final String v = canonical;
    final int plus = v.indexOf('+');
    if (plus < 0 || plus + 1 >= v.length) return const ['0'];
    return v.substring(plus + 1).split('.');
  }

  List<int> _parseCore() {
    final String v = canonical;
    final String core = v.split('+').first.split('-').first;
    final List<String> parts = core.split('.');
    if (parts.length < 3) return const [0, 0, 0];
    return [
      int.tryParse(parts[0]) ?? 0,
      int.tryParse(parts[1]) ?? 0,
      int.tryParse(parts[2]) ?? 0,
    ];
  }
}

class Pubspec {
  static const _PubspecVersionCompat version = _PubspecVersionCompat();
}
