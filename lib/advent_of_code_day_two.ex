defmodule AdventOfCode.DayTwo do

  def min_max_checksum(list) do
    [largest, smallest] = [Enum.max(list), Enum.min(list)]
    largest - smallest
  end

  def difference_sum(list_of_lists) do
    Enum.map(list_of_lists, fn(x) -> min_max_checksum(x) end)
    |> Enum.sum()
  end

  def parse_input(file) do
    file
    |> File.read!
    |> String.split("\n")
  end
end
