defmodule AdventOfCode.DayThree do


  def cartesian_distance(location) do
    0
  end

  def distance_from_xy_start(node) do
    distance_x = abs(node.x - 0)
    distance_y = abs(node.y - 0)
    distance_x + distance_y
  end
end

defmodule AdventOfCode.DayThree.Node do
  defstruct [:x, :y]
end
