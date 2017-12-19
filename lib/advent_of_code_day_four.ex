defmodule AoC.DayFour do
  alias AoC.Helpers

  def number_of_valid_passphrases_in_file(file_path, validator) do
    Helpers.enumerate_file_per_line(file_path)
    |> Enum.filter(validator)
    |> length
  end

  def is_valid_passphrase(input) do
    number_of_words = String.split(input)
                      |> length

    number_of_unique_words = String.split(input)
                              |> Enum.uniq
                              |> length

    number_of_words == number_of_unique_words
  end

  def is_super_valid_passphrase(input) do
    number_of_words = String.split(input)
                      |> length

    number_of_non_anagrams = String.split(input)
                             |> Enum.map(fn(x) -> String.graphemes(x) |> Enum.sort end)
                             |> Enum.uniq
                             |> length

    number_of_words == number_of_non_anagrams
  end

end
