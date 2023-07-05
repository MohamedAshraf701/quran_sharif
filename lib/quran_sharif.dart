/// A Flutter library for working with the Quran.
///
/// The `quran` library provides a set of static methods to retrieve and filter
/// information from the Quran. It includes functionality to retrieve surahs,
/// surah by ID, surah names, surahs by revelation type, and ayahs by Juz ID.
///
/// Usage:
/// 1. Import the `quran` library.
/// 2. Use the static methods provided by the `Quran` class to access the Quran data.
///    - `getAllSurah`: Retrieves all surahs from the Quran.
///    - `getSurahById`: Retrieves a specific surah from the Quran based on its ID.
///      - `id`: The ID of the surah to retrieve.
///    - `getSurahName`: Retrieves a list of surah names from the Quran.
///    - `getSurahByrevelationType`: Filters surahs based on the revelation type (Makki or Madani).
///      - `isMakki`: A boolean value indicating whether to filter for Makki or Madani surahs.
///    - `getJuz`: Retrieves ayahs from the Quran based on the Juz ID.
///      - `id`: The ID of the Juz to retrieve ayahs from.
///
/// Note: This library requires the `quran_sharif` package.
library quran_sharif;

import 'package:quran_sharif/arabic_data_model.dart';
import 'package:quran_sharif/quran_sharif_arabic.dart';

export 'package:quran_sharif/arabic_data_model.dart';

class Quran {
  /// Retrieves all surahs from the Quran.
  static List<Surahs> getAllSurah() {
    /// Parse the Quran data from JSON using the Arabic data model
    Data data = Data.fromJson(quranArabic);
    return data.surahs;
  }

  /// Retrieves a specific surah from the Quran based on its ID.
  ///
  /// Returns the Surahs object representing the surah with the provided ID,
  /// or null if the surah is not found.
  static Surahs? getSurahById({required int id}) {
    /// Parse the Quran data from JSON using the Arabic data model
    Data data = Data.fromJson(quranArabic);
    for (int i = 0; i < data.surahs.length; i++) {
      /// Check if the current surah matches the provided ID
      if (data.surahs[i].number == id) {
        return data.surahs[i];
      }
    }
    return null; // Return null if the surah is not found
  }

  /// Retrieves a list of surah names from the Quran.
  static List<String> getSurahName() {
    /// Parse the Quran data from JSON using the Arabic data model
    Data data = Data.fromJson(quranArabic);
    List<String> names = [];
    for (int i = 0; i < data.surahs.length; i++) {
      /// Add the name of each surah to the list
      names.add(data.surahs[i].name);
    }
    return names;
  }

  /// Filters surahs from the Quran based on the revelation type.
  ///
  /// Returns a list of Surahs objects that match the provided revelation type.
  /// - `isMakki`: A boolean value indicating whether to filter for Makki or Madani surahs.
  static List<Surahs> getSurahByRevelationType({required bool isMakki}) {
    /// Parse the Quran data from JSON using the Arabic data model
    Data data = Data.fromJson(quranArabic);

    /// Filter the surahs based on the provided revelation type (Makki or Madani)
    return data.surahs.where((element) => element.revelationType == (isMakki ? "Meccan" : "Medinan")).toList();
  }

  /// Retrieves ayahs from the Quran based on the Juz ID.
  ///
  /// Returns a list of Ayahs objects that belong to the provided Juz ID.
  /// - `id`: The ID of the Juz to retrieve ayahs from.
  static List<Ayahs> getJuz({required int id}) {
    /// Parse the Quran data from JSON using the Arabic data model
    Data data = Data.fromJson(quranArabic);
    List<Ayahs> ayahs = [];
    for (int i = 0; i < data.surahs.length; i++) {
      for (int j = 0; j < data.surahs[i].ayahs.length; j++) {
        /// Check if the current ayah belongs to the provided Juz ID
        if (data.surahs[i].ayahs[j].juz == id) {
          /// Add the ayah to the list
          ayahs.add(data.surahs[i].ayahs[j]);
        }
      }
    }
    return ayahs;
  }
}
