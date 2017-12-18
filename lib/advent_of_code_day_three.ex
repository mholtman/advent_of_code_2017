defmodule AdventOfCode.DayThree do
  require Integer

  defmodule Node do
    defstruct [:x, :y]
  end

  def cartesian_distance(1) do
    0
  end

  def cartesian_distance(location) when location > 1 do
    raw_sqrt = trunc(:math.sqrt(location))

    {inside_length, outside_length} = determine_lengths(raw_sqrt)

    inside_max = :math.pow(inside_length, 2)

    difference = location - inside_max

    segment_length = outside_length - 1

    segment_number = trunc(Float.ceil(difference / segment_length))

    segment_offset = segment_length / 2

    variable_offset = (Integer.mod(difference, segment_length)) - segment_offset

    myNode = calculate_xy(segment_offset, variable_offset, segment_number)

    distance_from_xy_start(myNode)
  end

  defp calculate_xy(segment_offset, variable_offset, segment_number) do
    case segment_number do
      1 -> %Node{x: segment_offset, y: variable_offset}
      2 -> %Node{x: variable_offset, y: segment_offset}
      3 -> %Node{x: -segment_offset, y: -variable_offset}
      4 -> %Node{x: variable_offset, y: -segment_offset}
    end
  end

  defp determine_lengths(raw_sqrt) do
    if (Integer.is_odd(raw_sqrt)) do
      { raw_sqrt, raw_sqrt + 2}
    else
      { raw_sqrt - 1, raw_sqrt + 1}
    end
  end

  def distance_from_xy_start(node) do
    distance_x = abs(node.x - 0)
    distance_y = abs(node.y - 0)
    distance_x + distance_y
  end
end

