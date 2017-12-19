defmodule AdventOfCode.DayTwo do

  alias AoC.Helpers

  def min_max_checksum(list) do
    [largest, smallest] = [Enum.max(list), Enum.min(list)]
    largest - smallest
  end

  def difference_sum(list_of_lists) do
    Enum.map(list_of_lists, fn(x) -> min_max_checksum(x) end)
    |> Enum.sum()
  end


  def checksum_file(file) do
    Helpers.enumerate_file_by_line(file)
    |> Enum.map(fn(x) -> String.split(x, "\t")
                          |> Enum.map(fn(x) -> String.to_integer(x) end)
                        end)
    |> difference_sum
  end

  def no_remainder_answer(numbers) do
    numbers
    |> Enum.sort(&(&1 >= &2))
    |> find_integer_quotient
  end

  def find_integer_quotient(sorted_numbers) do
    divide_list(sorted_numbers)
  end

  def divide_list([head | tail]) do
    divide_list(tail)
  end

  def divide_list([]) do
    []
  end
end
