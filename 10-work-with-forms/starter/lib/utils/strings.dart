String camelCaseToTitle(String text) {
  final exp = RegExp(r'(?<=[a-z])[A-Z]');
  final result = text
      .replaceAllMapped(
        exp,
        (Match m) => (' ' + m.group(0)!),
      )
      .toUpperCase();
  return result;
}
