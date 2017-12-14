defmodule AdventOfCode.DayOne do

  def inverseCaptcha(number) do
    Integer.digits(number)
    |> chunkWrappedList()
    |> Enum.filter(fn([i,j]) -> i == j end)
    |> Enum.reduce(0, fn([x,y],acc) -> x + acc end)
  end

  defp chunkWrappedList(digits) do
    Enum.chunk_every(digits, 2, 1, [hd(digits)])
  end

  def interlacedChecksum(number) do
    digits = Integer.digits(number)
    list_length = length(digits)
    [primary_list, secondary_list] = Enum.chunk(digits, round(list_length/2))

    Enum.zip(primary_list, secondary_list)
    |> Enum.filter(fn({i,j}) -> i == j end)
    |> Enum.reduce(0, fn({x,y}, acc) -> x + y + acc end)
  end
end
