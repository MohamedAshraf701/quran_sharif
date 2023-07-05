/// This library provides classes and models for representing Quranic data in Arabic.
///
/// The [Data] class represents the overall Quranic data, including a list of [Surahs]
/// and an [Edition] object that provides information about the Quran edition.
///
/// The [Surahs] class represents a specific Surah (chapter) of the Quran, containing
/// properties such as the Surah number, name, English name, translation, revelation type,
/// and a list of [Ayahs] (verses) within the Surah.
///
/// The [Ayahs] class represents an individual Ayah (verse) within a Surah, with properties
/// such as the Ayah number, audio URL, secondary audio URLs, text, number in Surah, Juz,
/// Manzil, page, ruku, hizb quarter, and a boolean indicating if Sajda (prostration) is required.
///
/// The [Edition] class represents information about the Quran edition, including the
/// identifier, language, name, English name, format, and type.
///
/// This library provides methods to parse Quranic data from JSON using the `fromJson` constructors,
/// as well as convert the data back to JSON using the `toJson` methods.
///
/// Use the provided classes and methods in this library to work with Quranic data in Arabic.

/// Represents the data structure of the Quran.
class Data {
  final List<Surahs> surahs;
  final Edition edition;

  /// Constructs a new `Data` object.
  ///
  /// - `surahs`: The list of Surahs in the Quran.
  /// - `edition`: The edition information of the Quran.
  Data({
    required this.surahs,
    required this.edition,
  });

  /// Constructs a new `Data` object from a JSON representation.
  ///
  /// - `json`: A JSON map representing the `Data` object.
  Data.fromJson(Map<String, dynamic> json)
      : surahs = (json['surahs'] as List<dynamic>).map((dynamic e) => Surahs.fromJson(e as Map<String, dynamic>)).toList(),
        edition = Edition.fromJson(json['edition'] as Map<String, dynamic>);

  /// Converts the `Data` object to a JSON representation.
  Map<String, dynamic> toJson() => {
        'surahs': surahs.map((e) => e.toJson()).toList(),
        'edition': edition.toJson(),
      };
}

/// Represents a Surah (chapter) in the Quran.
class Surahs {
  final int number;
  final String name;
  final String englishName;
  final String englishNameTranslation;
  final String revelationType;
  final List<Ayahs> ayahs;

  /// Constructs a new `Surahs` object.
  ///
  /// - `number`: The Surah number.
  /// - `name`: The name of the Surah.
  /// - `englishName`: The English name of the Surah.
  /// - `englishNameTranslation`: The translation of the English name of the Surah.
  /// - `revelationType`: The type of revelation.
  /// - `ayahs`: The list of Ayahs in the Surah.
  Surahs({
    required this.number,
    required this.name,
    required this.englishName,
    required this.englishNameTranslation,
    required this.revelationType,
    required this.ayahs,
  });

  /// Constructs a new `Surahs` object from a JSON representation.
  ///
  /// - `json`: A JSON map representing the `Surahs` object.
  Surahs.fromJson(Map<String, dynamic> json)
      : number = json['number'] as int,
        name = json['name'] as String,
        englishName = json['englishName'] as String,
        englishNameTranslation = json['englishNameTranslation'] as String,
        revelationType = json['revelationType'] as String,
        ayahs = (json['ayahs'] as List<dynamic>).map((dynamic e) => Ayahs.fromJson(e)).toList();

  /// Converts the `Surahs` object to a JSON representation.
  Map<String, dynamic> toJson() => {
        'number': number,
        'name': name,
        'englishName': englishName,
        'englishNameTranslation': englishNameTranslation,
        'revelationType': revelationType,
        'ayahs': ayahs.map((e) => e.toJson()).toList(),
      };
}

/// Represents an Ayah (verse) in the Quran.
class Ayahs {
  final int number;
  final String audio;
  final List<String> audioSecondary;
  final String text;
  final int numberInSurah;
  final int juz;
  final int manzil;
  final int page;
  final int ruku;
  final int hizbQuarter;
  final bool sajda;

  /// Constructs a new `Ayahs` object.
  ///
  /// - `number`: The Ayah number.
  /// - `audio`: The audio URL of the Ayah.
  /// - `audioSecondary`: The secondary audio URLs of the Ayah.
  /// - `text`: The text of the Ayah.
  /// - `numberInSurah`: The number of the Ayah within the Surah.
  /// - `juz`: The Juz (part) number the Ayah belongs to.
  /// - `manzil`: The Manzil number the Ayah belongs to.
  /// - `page`: The page number the Ayah belongs to.
  /// - `ruku`: The Ruku number the Ayah belongs to.
  /// - `hizbQuarter`: The Hizb quarter number the Ayah belongs to.
  /// - `sajda`: Indicates if the Ayah contains Sajda (prostration) verses.
  Ayahs({
    required this.number,
    required this.audio,
    required this.audioSecondary,
    required this.text,
    required this.numberInSurah,
    required this.juz,
    required this.manzil,
    required this.page,
    required this.ruku,
    required this.hizbQuarter,
    required this.sajda,
  });

  /// Constructs a new `Ayahs` object from a JSON representation.
  ///
  /// - `json`: A JSON map representing the `Ayahs` object.
  Ayahs.fromJson(Map<String, dynamic> json)
      : number = json['number'] as int,
        audio = json['audio'] as String,
        audioSecondary = (json['audioSecondary'] as List<dynamic>).map((dynamic e) => e as String).toList(),
        text = json['text'] as String,
        numberInSurah = json['numberInSurah'] as int,
        juz = json['juz'] as int,
        manzil = json['manzil'] as int,
        page = json['page'] as int,
        ruku = json['ruku'] as int,
        hizbQuarter = json['hizbQuarter'] as int,
        sajda = json['sajda'] == false ? false : true;

  /// Converts the `Ayahs` object to a JSON representation.
  Map<String, dynamic> toJson() => {
        'number': number,
        'audio': audio,
        'audioSecondary': audioSecondary,
        'text': text,
        'numberInSurah': numberInSurah,
        'juz': juz,
        'manzil': manzil,
        'page': page,
        'ruku': ruku,
        'hizbQuarter': hizbQuarter,
        'sajda': sajda,
      };
}

/// Represents the edition information of the Quran.
class Edition {
  final String identifier;
  final String language;
  final String name;
  final String englishName;
  final String format;
  final String type;

  /// Constructs a new `Edition` object.
  ///
  /// - `identifier`: The identifier of the edition.
  /// - `language`: The language of the edition.
  /// - `name`: The name of the edition.
  /// - `englishName`: The English name of the edition.
  /// - `format`: The format of the edition.
  /// - `type`: The type of the edition.
  Edition({
    required this.identifier,
    required this.language,
    required this.name,
    required this.englishName,
    required this.format,
    required this.type,
  });

  /// Constructs a new `Edition` object from a JSON representation.
  ///
  /// - `json`: A JSON map representing the `Edition` object.
  Edition.fromJson(Map<String, dynamic> json)
      : identifier = json['identifier'] as String,
        language = json['language'] as String,
        name = json['name'] as String,
        englishName = json['englishName'] as String,
        format = json['format'] as String,
        type = json['type'] as String;

  /// Converts the `Edition` object to a JSON representation.
  Map<String, dynamic> toJson() => {
        'identifier': identifier,
        'language': language,
        'name': name,
        'englishName': englishName,
        'format': format,
        'type': type,
      };
}
