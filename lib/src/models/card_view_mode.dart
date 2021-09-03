enum CardViewMode {
  read,

  add,

  modify,

  remove,
}

extension CardViewModeExtension on CardViewMode {
  String get nameStr {
    return this.toString().split('.')[1];
  }
}

CardViewMode cardModeByStr(String str) {
  return CardViewMode.values.firstWhere(
    (CardViewMode s) {
      return s.nameStr == str;
    },
    orElse: () => CardViewMode.read,
  );
}
