defmodule AdventOfCodeDayThreeTest do
  use ExUnit.Case

  alias AdventOfCode.DayThree.Node

  test "distance to origin is 0" do
    assert AdventOfCode.DayThree.cartesian_distance(1) == 0
  end

  test "distance to 12 is 3" do
    assert AdventOfCode.DayThree.cartesian_distance(12) == 3
  end

  test "compute distance with x y" do
    assert AdventOfCode.DayThree.distance_from_xy_start(%Node{x: 2, y: 1}) ==  3
  end

  test "compute distance with positive x and negative y" do
    assert AdventOfCode.DayThree.distance_from_xy_start(%Node{ x: 0, y: -2}) == 2
  end

  test "compute an obscene distance" do
    assert AdventOfCode.DayThree.distance_from_xy_start(%Node{ x: -185, y: 295}) == 480
  end
end
