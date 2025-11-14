enum Environment { development, staging, production }

class AppEnvironment {
  static late Environment _env;

  static void init(Environment env) {
    _env = env;
  }

  static Environment get env => _env;

  static String get name {
    switch (_env) {
      case Environment.development:
        return 'Development';
      case Environment.staging:
        return 'Staging';
      case Environment.production:
        return 'Production';
    }
  }

  static String get apiBaseUrl {
    switch (_env) {
      case Environment.development:
        return '';
      case Environment.staging:
        return '';
      case Environment.production:
        return '';
    }
  }
}