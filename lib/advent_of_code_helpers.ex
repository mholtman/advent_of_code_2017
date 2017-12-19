defmodule AoC.Helpers do

  def enumerate_file_per_line(file_path) do
    file_path
    |> File.read!
    |> String.split("\n", trim: true)
  end

end
