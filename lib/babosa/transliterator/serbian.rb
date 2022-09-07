# frozen_string_literal: true

require_relative "latin"

module Babosa
  module Transliterator
    class Serbian < Latin
      APPROXIMATIONS = Cyrillic.const_get(:APPROXIMATIONS).merge(
        {
          "Ћ" => "Ć",
          "Ц" => "C",
          "Ч" => "Č",
          "Ђ" => "Đ",
          "Џ" => "Dž",
          "Х" => "H",
          "Ј" => "J",
          "Љ" => "Lj",
          "Њ" => "Nj",
          "Ж" => "Ž",
          "ц" => "c",
          "ћ" => "ć",
          "ч" => "č",
          "ђ" => "đ",
          "џ" => "dž",
          "х" => "h",
          "ј" => "j",
          "љ" => "lj",
          "њ" => "nj",
          "ж" => "ž"
        }
      )
    end
  end
end
