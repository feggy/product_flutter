enum Env {
  development,
  staging,
  production,
}

class BuildConfig {
  static Map<String, String> _config = _Config.development;
  static void setEnvironment(Env env) {
    switch (env) {
      case Env.development:
        _config = _Config.development;
        break;
      case Env.staging:
        _config = _Config.staging;
        break;
      case Env.production:
        _config = _Config.production;
        break;
    }
  }

  static String get baseUrl {
    return _config[_Config.baseUrl]!;
  }
}

class _Config {
  static const String baseUrl = 'BASE_URL';

  static const Map<String, String> development = {
    baseUrl: 'https://dummyjson.com/',
  };

  static const Map<String, String> staging = {
    baseUrl: 'https://dummyjson.com/',
  };

  static const Map<String, String> production = {
    baseUrl: 'https://dummyjson.com/',
  };
}
