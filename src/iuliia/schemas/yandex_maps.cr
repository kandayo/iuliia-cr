# DO NOT EDIT THIS FILE.
# Generated from Iuliia schemas. See `Iuliia::SchemaImporter`.

require "../engine"

module Iuliia
  # The `YandexMaps` module provides transliteration (`Engine.translate`) using
  # the Yandex.Maps transliteration schema.
  #
  # [More information](https://iuliia.ru/yandex-maps/) (in Russian)
  #
  # ### Examples
  #
  # ```
  # Iuliia::YandexMaps.translate("Юлия, съешь ещё этих мягких французских булок из Йошкар-Олы, да выпей алтайского чаю")
  # # => "Yuliya, syesh yeschyo etikh myagkikh frantsuzskikh bulok iz Yoshkar-Oly, da vypey altayskogo chayu"
  #
  # Iuliia::YandexMaps.translate("Россия, город Йошкар-Ола, улица Яна Крастыня")
  # # => "Rossiya, gorod Yoshkar-Ola, ulitsa Yana Krastynya"
  #
  # Iuliia::YandexMaps.translate("Санкт-Петербург, Подъездной пер")
  # # => "Sankt-Peterburg, Podyezdnoy per"
  #
  # Iuliia::YandexMaps.translate("Москва, ул Подъёмная")
  # # => "Moskva, ul Podyomnaya"
  #
  # Iuliia::YandexMaps.translate("Астрахань, ул Подъяпольского")
  # # => "Astrakhan, ul Podyapolskogo"
  #
  # Iuliia::YandexMaps.translate("Щегловитовка")
  # # => "Scheglovitovka"
  #
  # Iuliia::YandexMaps.translate("Новый Уренгой")
  # # => "Noviy Urengoy"
  #
  # Iuliia::YandexMaps.translate("Елабуга")
  # # => "Yelabuga"
  #
  # Iuliia::YandexMaps.translate("Бабаево")
  # # => "Babayevo"
  #
  # Iuliia::YandexMaps.translate("Белово")
  # # => "Belovo"
  # ```
  module YandexMaps
    include Iuliia::Engine
    extend self

    private NAME        = "yandex_maps"
    private DESCRIPTION = "Yandex.Maps transliteration schema"

    private STANDARD_RULES_MAPPING = {
      "а" => "a",
      "б" => "b",
      "в" => "v",
      "г" => "g",
      "д" => "d",
      "е" => "e",
      "ё" => "yo",
      "ж" => "zh",
      "з" => "z",
      "и" => "i",
      "й" => "y",
      "к" => "k",
      "л" => "l",
      "м" => "m",
      "н" => "n",
      "о" => "o",
      "п" => "p",
      "р" => "r",
      "с" => "s",
      "т" => "t",
      "у" => "u",
      "ф" => "f",
      "х" => "kh",
      "ц" => "ts",
      "ч" => "ch",
      "ш" => "sh",
      "щ" => "sch",
      "ъ" => "",
      "ы" => "y",
      "ь" => "",
      "э" => "e",
      "ю" => "yu",
      "я" => "ya",
      "А" => "A",
      "Б" => "B",
      "В" => "V",
      "Г" => "G",
      "Д" => "D",
      "Е" => "E",
      "Ё" => "Yo",
      "Ж" => "Zh",
      "З" => "Z",
      "И" => "I",
      "Й" => "Y",
      "К" => "K",
      "Л" => "L",
      "М" => "M",
      "Н" => "N",
      "О" => "O",
      "П" => "P",
      "Р" => "R",
      "С" => "S",
      "Т" => "T",
      "У" => "U",
      "Ф" => "F",
      "Х" => "Kh",
      "Ц" => "Ts",
      "Ч" => "Ch",
      "Ш" => "Sh",
      "Щ" => "Sch",
      "Ъ" => "",
      "Ы" => "Y",
      "Ь" => "",
      "Э" => "E",
      "Ю" => "Yu",
      "Я" => "Ya",
    }
    private PREVIOUS_CHARACTERS_RULES_MAPPING = {
      "е"  => "ye",
      "ае" => "ye",
      "ие" => "ye",
      "ое" => "ye",
      "уе" => "ye",
      "эе" => "ye",
      "юе" => "ye",
      "яе" => "ye",
      "Е"  => "Ye",
      "Ае" => "ye",
      "Ие" => "ye",
      "Ое" => "ye",
      "Уе" => "ye",
      "Эе" => "ye",
      "Юе" => "ye",
      "Яе" => "ye",
      "АЕ" => "Ye",
      "ИЕ" => "Ye",
      "ОЕ" => "Ye",
      "УЕ" => "Ye",
      "ЭЕ" => "Ye",
      "ЮЕ" => "Ye",
      "ЯЕ" => "Ye",
    }
    private NEXT_CHARACTERS_RULES_MAPPING = {
      "ъе" => "y",
      "ЪЕ" => "Y",
      "Ъе" => "Y",
    }
    private SPECIAL_WORD_ENDINGS_RULES_MAPPING = {
      "ый" => "iy",
      "Ый" => "Iy",
      "ЫЙ" => "IY",
    }

    # Returns the transliteration schema **name**.
    def name : String
      NAME
    end

    # Returns the transliteration schema **description**.
    def description : String
      DESCRIPTION
    end

    private def standard_rules_mapping : Hash(String, String)
      STANDARD_RULES_MAPPING
    end

    private def previous_characters_rules_mapping : Hash(String, String)
      PREVIOUS_CHARACTERS_RULES_MAPPING
    end

    private def next_characters_rules_mapping : Hash(String, String)
      NEXT_CHARACTERS_RULES_MAPPING
    end

    private def special_word_endings_rules_mapping : Hash(String, String)
      SPECIAL_WORD_ENDINGS_RULES_MAPPING
    end
  end
end
