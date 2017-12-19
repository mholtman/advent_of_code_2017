defmodule AoC.DayFour do

  def is_valid_passphrase(input) do
    number_of_words = String.split(input)
                      |> length

    number_of_unique_words = String.split(input)
                              |> Enum.uniq
                              |> length

    number_of_words == number_of_unique_words
  end

  def number_of_valid_passphrases_in_file(file_path) do
    file_path
    |> File.read!
    |> String.split("\n")
    |> List.delete_at(-1)
    |> Enum.filter(fn(x) -> is_valid_passphrase(x) end)
    |> length
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

  def number_of_non_anagram_passphrases_in_file(file_path) do
    file_path
    |> File.read!
    |> String.split("\n")
    |> List.delete_at(-1)
    |> Enum.filter(fn(x) -> is_super_valid_passphrase(x) end)
    |> length
  end
end
