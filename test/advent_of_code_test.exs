defmodule AdventOfCodeTest do
  use ExUnit.Case
  doctest AdventOfCode

  test "greets the world" do
    assert AdventOfCode.hello() == :world
  end

  test "1122 sums as 3" do
    assert AdventOfCode.inverseCaptcha(1122) == 3
  end

  test "1111 sums as 4" do
    assert AdventOfCode.inverseCaptcha(1111) == 4
  end

  test "1234 sums as 0" do
    assert AdventOfCode.inverseCaptcha(1234) == 0
  end

  test "91212129 sums as 9" do
    assert AdventOfCode.inverseCaptcha(91212129) == 9
  end
end
