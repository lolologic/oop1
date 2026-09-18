class Teilnehmer {
  String vorname;
  String nachname;
  String? geschlecht;
  DateTime geburtsdatum;
  int? abschlussnote;

  Teilnehmer({
    required this.vorname,
    required this.nachname,
    this.geschlecht,
    required this.geburtsdatum,
    this.abschlussnote,
  });

  int get alter {
    final dateNow = DateTime.now();

    int alter = dateNow.year - geburtsdatum.year;

    if ((dateNow.month < geburtsdatum.month) ||
        (dateNow.month == geburtsdatum.month && dateNow.day < geburtsdatum.day)) {
      alter -= 1;
    }

    return alter;
  }
}
