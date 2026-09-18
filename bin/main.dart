import 'package:oop1/teilnehmer.dart';

void main() {
  final teilnehmer = erstelleTeilnehmerListe();
  ausgabeTeilnehmerListe(teilnehmer);
}

List<Teilnehmer> erstelleTeilnehmerListe() {
  final teilnehmer = <Teilnehmer>[
    Teilnehmer(vorname: 'Max', nachname: 'Mustermann', geburtsdatum: DateTime(2000, 1, 1)),
    Teilnehmer(
      vorname: 'Anna',
      nachname: 'Schmidt',
      geschlecht: 'weiblich',
      geburtsdatum: DateTime(1998, 3, 14),
      abschlussnote: 2,
    ),
    Teilnehmer(vorname: 'Mehmet', nachname: 'Yilmaz', geschlecht: 'männlich', geburtsdatum: DateTime(2001, 7, 22)),
    Teilnehmer(vorname: 'Alex', nachname: 'Meyer', geburtsdatum: DateTime(1995, 11, 5), abschlussnote: 1),
    Teilnehmer(vorname: 'Sophie', nachname: 'Wagner', geschlecht: 'weiblich', geburtsdatum: DateTime(2003, 1, 30)),
  ];

  return teilnehmer;
}

void ausgabeTeilnehmerListe(List<Teilnehmer> teilnehmer) {
  for (final tn in teilnehmer) {
    print('Vorname: ${tn.vorname}');
    print('Nachname: ${tn.nachname}');

    if (tn.geschlecht != null) {
      print('Geschlecht: ${tn.geschlecht}');
    }

    print('Alter: ${tn.alter}');

    if (tn.abschlussnote != null) {
      print('Abschlussnote: ${tn.abschlussnote}');
    }

    print('');
  }
}

/*
Teilnehmer erstelleTeilnehmer() {
  print('Füge Teilnehmer hinzu.');

  String? vorname;

  while (vorname == null || vorname.trim().isEmpty) {
    stdout.write('Vorname: ');
    vorname = stdin.readLineSync();
  }

  String? nachname;

  while (nachname == null || nachname.trim().isEmpty) {
    stdout.write('Nachname: ');
    nachname = stdin.readLineSync();
  }

  String? geschlecht;

  stdout.write('Geschlecht (optional): ');
  geschlecht = stdin.readLineSync();

  geschlecht = geschlecht?.trim().toLowerCase();

  while (geschlecht != '' && geschlecht != 'w' && geschlecht != 'm' && geschlecht != 'd') {
    print('Gültige Eingaben: ENTER, (w), (m), (d).');
    stdout.write('Geschlecht(optional): ');
    geschlecht = stdin.readLineSync();
    geschlecht = geschlecht?.trim().toLowerCase();
  }

  switch (geschlecht) {
    case 'w':
      geschlecht = 'weiblich';
      break;
    case 'm':
      geschlecht = 'männlich';
      break;
    case 'd':
      geschlecht = 'divers';
      break;
    case '':
      geschlecht = null;
      break;
  }

  String? geburtsdatum;

  while (geburtsdatum == null || geburtsdatum.trim().isEmpty) {
    stdout.write('Geburtsdatum (TT.MM.JJJJ): ');
    geburtsdatum = stdin.readLineSync();

    geburtsdatum.split('.');
  }

}
*/
