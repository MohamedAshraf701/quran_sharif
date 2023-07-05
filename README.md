
# quran_sharif Package

[![Pub Version](https://img.shields.io/pub/v/quran_sharif.svg)](https://pub.dev/packages/quran_sharif)
![Flutter Platform](https://img.shields.io/badge/platform-flutter-yellow)

A Flutter package that provides utility functions to retrieve information from the Quran, such as surahs, ayahs, and other related data.

![Quran](https://example.com/quran-image.png)

## Features

- Complete text of the Quran in English and Arabic
- Support for switching between different translations
- Beautifully formatted display with adjustable font sizes
- Retrieve all surahs from the Quran.
- Get a specific surah by ID.
- Retrieve a list of surah names.
- Filter surahs by revelation type.
- Fetch ayahs by Juz ID.

## Installation

Add the following line to your `pubspec.yaml` file:

```yaml
dependencies:
  quran_sharif: <latest_version>
```

Then run `flutter pub get` to fetch the package.

## Usage

Import the package into your Dart file:

```dart
import 'package:quran_sharif/quran_sharif.dart';
```

Use the provided methods to access the Quran data:

```dart
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
```

For more details on each method and its usage, refer to the API documentation.

## Examples

You can find more usage examples in the [example](example) folder of this repository.

## API Documentation

The API documentation for this package can be found [here](https://zaid.digital).

## License

This project is licensed under the [MIT License](https://zaid.digital).

## Contributing

Contributions are welcome! If you have any suggestions, bug reports, or feature requests, please open an issue or submit a pull request.

## Author

This package is authored and maintained by [zaid.digital](https://zaid.digital).

## Get in touch

If you have any questions, feel free to reach out:

- Email: ashrafchauhan567@gmail.com
- Githube: [@MohamedAshraf701](https://github.com/MohamedAshraf701)





