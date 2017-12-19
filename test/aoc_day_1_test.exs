defmodule AdventOfCodeDayOneTest do
  use ExUnit.Case

  test "1122 sums as 3" do
    assert AdventOfCode.DayOne.inverseCaptcha(1122) == 3
  end

  test "1111 sums as 4" do
    assert AdventOfCode.DayOne.inverseCaptcha(1111) == 4
  end

  test "1234 sums as 0" do
    assert AdventOfCode.DayOne.inverseCaptcha(1234) == 0
  end

  test "91212129 sums as 9" do
    assert AdventOfCode.DayOne.inverseCaptcha(91212129) == 9
  end

  test "1212 checksums to 6" do
    assert AdventOfCode.DayOne.interlacedChecksum(1212) == 6
  end

  test "1221 checksums to 0" do
    assert AdventOfCode.DayOne.interlacedChecksum(1221) == 0
  end

  test "123425 checksums to 4" do
    assert AdventOfCode.DayOne.interlacedChecksum(123425) == 4
  end

  test "123123 checksums to 12" do
    assert AdventOfCode.DayOne.interlacedChecksum(123123) == 12
  end

  test "12131415 checksums to 4" do
    assert AdventOfCode.DayOne.interlacedChecksum(12131415) == 4
  end

  test "48954796 checksums to 26" do
    assert AdventOfCode.DayOne.interlacedChecksum(48954796) == 26
  end
end
