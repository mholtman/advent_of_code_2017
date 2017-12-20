defmodule AoC.DayFive do

  def jump_from_index(list, acc, index) do
    if index < length(list) do
      current_value = Enum.at(list, index)

      new_list = List.replace_at(list, index, current_value + 1)

      {:ok, new_list, acc + 1, current_value + index}

    else
      {:escaped_minotaur, list, acc, index}
    end

  end
end
