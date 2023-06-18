enum Flavor {
  dev,
  uat,
  prod,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor!) {
      case Flavor.dev:
        return 'CleanArch DEV';
      case Flavor.uat:
        return 'CleanArch UAT';
      case Flavor.prod:
        return 'CleanArch';
    }
  }
}
