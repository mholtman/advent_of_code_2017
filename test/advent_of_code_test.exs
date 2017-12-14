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

  test "1212 checksums to 6" do
    assert AdventOfCode.interlacedChecksum(1212) == 6
  end

  test "1221 checksums to 0" do
    assert AdventOfCode.interlacedChecksum(1221) == 0
  end

  test "123425 checksums to 4" do
    assert AdventOfCode.interlacedChecksum(123425) == 4
  end

  test "123123 checksums to 12" do
    assert AdventOfCode.interlacedChecksum(123123) == 12
  end

  test "12131415 checksums to 4" do
    assert AdventOfCode.interlacedChecksum(12131415) == 4
  end

  test "48954796 checksums to 26" do
    assert AdventOfCode.interlacedChecksum(48954796) == 26
  end
end
