# frozen_string_literal: true
module Babosa
  module Transliterator
    # Approximations are based on GOST 7.79, System B:
    # http://en.wikipedia.org/wiki/ISO_9#GOST_7.79
    class Cyrillic < Base
      APPROXIMATIONS = {
        "Ё" => "Yo",
        "Ѓ" => "G",
        "Є" => "Ye",
        "Ї" => "Yi",
        "Љ" => "L",
        "Њ" => "N",
        "Ќ" => "K",
        "Ў" => "U",
        "Џ" => "Dh",
        "А" => "A",
        "Б" => "B",
        "В" => "V",
        "Г" => "G",
        "Д" => "D",
        "Е" => "E",
        "Ж" => "Zh",
        "З" => "Z",
        "И" => "I",
        "Й" => "J",
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
        "Х" => "X",
        "Ц" => "Cz",
        "Ч" => "Ch",
        "Ш" => "Sh",
        "Щ" => "Shh",
        "Ъ" => "",
        "Ы" => "Y",
        "Ь" => "",
        "Э" => "E",
        "Ю" => "Yu",
        "Я" => "Ya",
        "а" => "a",
        "б" => "b",
        "в" => "v",
        "г" => "g",
        "д" => "d",
        "е" => "e",
        "ж" => "zh",
        "з" => "z",
        "и" => "i",
        "й" => "j",
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
        "х" => "x",
        "ц" => "cz",
        "ч" => "ch",
        "ш" => "sh",
        "щ" => "shh",
        "ъ" => "",
        "ы" => "y",
        "ь" => "",
        "э" => "e",
        "ю" => "yu",
        "я" => "ya",
        "ё" => "yo",
        "ѓ" => "g",
        "є" => "ye",
        "ї" => "yi",
        "љ" => "l",
        "њ" => "n",
        "ќ" => "k",
        "ў" => "u",
        "џ" => "dh",
        "Ѣ" => "Ye",
        "ѣ" => "ye",
        "Ѫ" => "O",
        "ѫ" => "o",
        "Ѳ" => "Fh",
        "ѳ" => "fh",
        "Ѵ" => "Yh",
        "ѵ" => "yh",
        "Ґ" => "G",
        "ґ" => "g"
      }.freeze

      def transliterate(string)
        super.gsub(/(c)z([ieyj])/) { "#{Regexp.last_match(1)}#{Regexp.last_match(2)}" }
      end
    end
  end
end
