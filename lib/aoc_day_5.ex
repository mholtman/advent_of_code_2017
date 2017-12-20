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

  def escape_the_maze(list, acc, index) do
    with {:ok, list, acc, index} <- jump_from_index(list, acc, index) do
      escape_the_maze(list, acc, index)
                                                                    else
                                                                      {:escaped_minotaur, _, acc, _} -> {:escaped_minotaur, acc}
    end
  end

  def escape_maze_from_file(file_path) do
    maze = Helpers.enumerate_file_per_line(file_path)
           |> Enum.map(fn(x) -> String.to_integer(x) end)

    escape_the_maze(maze, 0, 0)
  end
end
