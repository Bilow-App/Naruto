extension StringX on String {
  String get camelCase => replaceAllMapped(
        RegExp('[-_ ]([a-z])'),
        (match) => match.group(1)?.toUpperCase() ?? '',
      );

  String get kebabCase => replaceAllMapped(
        RegExp('[A-Z]'),
        (match) => '-${match[0]!.toLowerCase()}',
      );

  String get capitalise => toLowerCase().replaceRange(
        0,
        1,
        substring(0, 1).toUpperCase(),
      );
}
