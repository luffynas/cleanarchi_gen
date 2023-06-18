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
        return '{{name.pascalCase()}} DEV';
      case Flavor.uat:
        return '{{name.pascalCase()}} UAT';
      case Flavor.prod:
        return '{{name.pascalCase()}}';
    }
  }
}
