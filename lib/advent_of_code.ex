defmodule AdventOfCode do
  @moduledoc """
  Documentation for AdventOfCode.
  """

  @doc """
  Hello world.

  ## Examples

      iex> AdventOfCode.hello
      :world

  """
  def hello do
    :world
  end

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

    Enum.concat(digits, digits)
    |> chunkByHalfLength
    |> Enum.filter(fn([i,j]) -> i == j end)
    |> Enum.reduce(0, fn([x,y], acc) -> x + acc end)
  end

  defp chunkByHalfLength(digits) do
    originalLength = trunc(length(digits)/2)
    for n <- Enum.take(digits, originalLength),
      do: [n, Enum.at(digits, trunc(n + originalLength/2) - 1)]
  end

end
