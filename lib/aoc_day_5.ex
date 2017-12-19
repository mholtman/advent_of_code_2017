defmodule AoC.DayFive do

  def jump_from_index(list, index) when index < length(list) do
    current_value = Enum.at(list, index)

    new_list = List.replace_at(list, index, current_value + 1)

    {new_list, current_value + index}
  end

  def jump_from_index(list, index) when index >= length(list) do
    :escaped_minotaur
  end
end
