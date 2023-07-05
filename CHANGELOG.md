## 0.0.0+7

# Quran Sharif

The `quran_sharif` package provides utility functions to retrieve information from the Quran, such as surahs, ayahs, and other related data. It depends on the `quran_sharif.arabic_data_model` package, which includes the necessary data models for representing Quranic data in Arabic.

## Usage

To use the `quran_sharif` package, follow these steps:

1. Add the package to your `pubspec.yaml` file:

   ```yaml
   dependencies:
     quran_sharif: <latest_version>
   ```

2. Import the package:

   ```dart
   import 'package:quran_sharif/quran_sharif.dart';

   ```

3. Use the provided methods to access the Quran data:

   ```dart
   void main() {
     // Retrieve all surahs
     List<Surahs> allSurahs = Quran.getAllSurah();

     // Get surah by ID
     Surahs? surah = Quran.getSurahById(id: 1);

     // Get a list of surah names
     List<String> surahNames = Quran.getSurahName();

     // Filter surahs by revelation type
     List<Surahs> makkiSurahs = Quran.getSurahByRevelationType(isMakki: true);

     // Get ayahs by Juz ID
     List<Ayahs> juzAyahs = Quran.getJuz(id: 1);

     // Perform operations on Quranic data
     // ...
   }
   ```

## Class Documentation

### `Quran`

The `Quran` class provides methods to retrieve Quranic data.

#### `getAllSurah()`

Retrieves all surahs from the Quran.

#### `getSurahById({required int id})`

Retrieves a specific surah from the Quran based on its ID.

- `id`: The ID of the surah.

Returns: An instance of `Surahs` if found, or `null` if not found.

#### `getSurahName()`

Retrieves a list of surah names from the Quran.

Returns: A list of surah names as `String`.

#### `getSurahByRevelationType({required bool isMakki})`

Filters surahs from the Quran based on the revelation type.

- `isMakki`: A boolean value indicating whether to filter Makki surahs (true) or Madani surahs (false).

Returns: A list of `Surahs` filtered by the revelation type.

#### `getJuz({required int id})`

Retrieves ayahs from the Quran based on the Juz ID.

- `id`: The ID of the Juz.

Returns: A list of `Ayahs` belonging to the specified Juz ID.

For more details on each class and its properties, refer to the API documentation.

## API Documentation

For the complete API reference, see the [quran_sharif API Documentation](https://pub.dev/documentation/quran_sharif/latest/quran_sharif/Quran-class.html).


