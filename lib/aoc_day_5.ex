defmodule AoC.DayFive do
  alias AoC.Helpers

  def jump_from_index(list, acc, index) do
    if index < length(list) do
      current_value = Enum.at(list, index)

      new_list = List.replace_at(list, index, current_value + 1)

      {:ok, new_list, acc + 1, current_value + index}

    else
      {:escaped_minotaur, list, acc, index}
    end

  end

  def modified_jump(list, acc, index) do
    if index < length(list) do
      current_value = Enum.at(list, index)

      new_list = List.replace_at(list, index, determine_value(current_value))

      {:ok, new_list, acc + 1, (current_value + index)}
    else
      {:escaped_minotaur, list, acc, index}
    end
  end

  defp determine_value(value) do
    if value > 2 do
      value - 1
    else
      value + 1
    end
  end

  def escape_the_maze(list, acc, index) do
    with {:ok, list, acc, index} <- jump_from_index(list, acc, index) do
      escape_the_maze(list, acc, index)
    else
      {:escaped_minotaur, _, acc, _} -> {:escaped_minotaur, acc}
    end
  end

  def modified_escape_the_maze(list, acc, index) do
    with {:ok, list, acc, index} <- modified_jump(list, acc, index) do
      modified_escape_the_maze(list, acc, index)
    else
      {:escaped_minotaur, _, acc, _} -> {:escaped_minotaur, acc}
    end
  end

  def escape_maze_from_file(file_path, escape_plan) do
    maze = Helpers.enumerate_file_per_line(file_path)
           |> Enum.map(fn(x) -> String.to_integer(x) end)

    escape_plan.(maze, 0, 0)
  end
end
