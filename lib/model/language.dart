class Language {
  final int id;
  final String name;
  final String flag;
  final String languageCode;
  Language(this.id, this.name, this.flag, this.languageCode);

  static List<Language> languagesList() {
    return <Language>[
      Language(1, "English", "U+1F1FA", 'en-Us'),
      Language(2, "Arabic", "U+1F1FA", 'ar-JO'),
    ];
  }
}
