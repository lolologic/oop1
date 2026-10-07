/// Represents a participant and their personal data.
class Teilnehmer {
  /// The participant's first name.
  String vorname;

  /// The participant's last name.
  String nachname;

  /// The participant's gender, or `null` if not specified.
  String? geschlecht;

  /// The participant's date of birth.
  DateTime geburtsdatum;

  /// The participant's final grade, or `null` if no grade is available.
  int? abschlussnote;

  /// Creates a participant with the provided personal data.
  Teilnehmer({
    required this.vorname,
    required this.nachname,
    this.geschlecht,
    required this.geburtsdatum,
    this.abschlussnote,
  });
}
