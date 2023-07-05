// ignore_for_file: avoid_function_literals_in_foreach_calls, avoid_print

import 'package:quran_sharif/quran_sharif.dart';

void main() {
  // Example usage of the Quran class methods

  // Retrieve all surahs from the Quran
  List<Surahs> allSurahs = Quran.getAllSurah();
  print('All Surahs:');
  allSurahs.forEach((surah) {
    print('${surah.number}: ${surah.name}');
  });

  // Retrieve a specific surah by ID
  int surahId = 1; // Example: Surah Al-Fatiha
  Surahs? surah = Quran.getSurahById(id: surahId);
  if (surah != null) {
    print('\nSurah $surahId:');
    print('Name: ${surah.name}');
    print('Revelation Type: ${surah.revelationType}');
  } else {
    print('Surah not found');
  }

  // Retrieve a list of surah names
  List<String> surahNames = Quran.getSurahName();
  print('\nSurah Names:');
  surahNames.forEach((name) {
    print(name);
  });

  // Filter surahs based on revelation type
  bool isMakki = true; // Example: Filter for Makki surahs
  List<Surahs> makkiSurahs = Quran.getSurahByRevelationType(isMakki: isMakki);
  print('\nMakki Surahs:');
  makkiSurahs.forEach((surah) {
    print('${surah.number}: ${surah.name}');
  });

  // Retrieve ayahs by Juz ID
  int juzId = 1; // Example: Juz 1
  List<Ayahs> juzAyahs = Quran.getJuz(id: juzId);
  print('\nJuz $juzId Ayahs:');
  juzAyahs.forEach((ayah) {
    print('Ayah ${ayah.numberInSurah}: ${ayah.text}');
  });
}
