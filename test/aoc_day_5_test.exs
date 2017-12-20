defmodule AoC.DayFive.Test do
  use ExUnit.Case

  test "jumping from head of a list increments the value" do
    assert(AoC.DayFive.jump_from_index([0, 1, 2, 3], 0, 0) == {:ok, [1, 1, 2, 3], 1, 0})
  end

  test "jumping from mid list increments value" do
    assert(AoC.DayFive.jump_from_index([0, 1, 2, 3], 0, 1) == {:ok, [0, 2, 2, 3], 1, 2})
  end

  test "jumping out of the list escapes the minotaur" do
    assert(AoC.DayFive.jump_from_index([0, 1, 2, 3], 0, 2) == {:ok, [0, 1, 3, 3], 1, 4})
  end

  test "passing an index out of bounds escapes the minotaur" do
    assert(AoC.DayFive.jump_from_index([0, 1, 3, 3], 0, 4) == {:escaped_minotaur, [0, 1, 3, 3], 0, 4})
  end

end
