defmodule AdventOfCodeDayTwoTest do
  use ExUnit.Case

  test "difference of min max values in list" do
    assert AdventOfCode.DayTwo.min_max_checksum([5, 1, 9, 5]) == 8
  end

  test "sum of differences of min max list in list" do
    assert AdventOfCode.DayTwo.difference_sum(
      [[5, 1, 9, 5],
       [7 ,5, 3],
       [2, 4, 6, 8]]) == 18
  end

  test "file has expected number of rows" do
    assert length(AdventOfCode.DayTwo.parse_input("test/day_two_data.txt")) == 16
  end

  # test "can find two numbers in list that divide with no remainder" do
  #   assert AdventOfCode.DayTwo.no_remainder_answer([5, 9, 2, 8]) == 4
  # end
end

