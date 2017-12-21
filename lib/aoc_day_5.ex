defmodule AoC.DayFive do
  alias AoC.Helpers

  def jump_from_index(list, list_length, acc, index) do
    if index < list_length do
      current_value = Enum.at(list, index)

      new_list = List.replace_at(list, index, current_value + 1)

      {:ok, new_list, list_length, acc + 1, current_value + index}

    else
      {:escaped_minotaur, list, list_length, acc, index}
    end

  end

  def modified_jump(list, list_length, acc, index) do
    if index < list_length do
      current_value = Enum.at(list, index)

      new_list = List.replace_at(list, index, determine_value(current_value))

      {:ok, new_list, list_length, acc + 1, (current_value + index)}
    else
      {:escaped_minotaur, list, list_length, acc, index}
    end
  end

  defp determine_value(value) do
    if value > 2 do
      value - 1
    else
      value + 1
    end
  end

  def escape_the_maze(list, list_length, acc, index) do
    with {:ok, list, list_length, acc, index} <- jump_from_index(list, list_length, acc, index) do
      escape_the_maze(list, list_length, acc, index)
    else
      {:escaped_minotaur, _, _, acc, _} -> {:escaped_minotaur, acc}
    end
  end

  def modified_escape_the_maze(list, list_length, acc, index) do
    with {:ok, list, list_length, acc, index} <- modified_jump(list, list_length, acc, index) do
      modified_escape_the_maze(list, list_length, acc, index)
    else
      {:escaped_minotaur, _, _, acc, _} -> {:escaped_minotaur, acc}
    end
  end

  def escape_maze_from_file(file_path, escape_plan) do
    maze = Helpers.enumerate_file_per_line(file_path)
           |> Enum.map(fn(x) -> String.to_integer(x) end)

    escape_plan.(maze, length(maze), 0, 0)
  end
end
