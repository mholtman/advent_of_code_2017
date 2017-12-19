defmodule AoC.DayFourTest do
  use ExUnit.Case

  test "passphrase with unique words is valid" do
    assert(AoC.DayFour.is_valid_passphrase("valid password") == true)
  end

  test "passphrase with repeated words is invalid" do
    assert(AoC.DayFour.is_valid_passphrase("invalid invalid password") == false)
  end

  test "passphrase conatining unique, non anagrams is valid" do
    assert(AoC.DayFour.is_super_valid_passphrase("abcde fghij") == true)
  end

  test "passphrase containing anagrams is invalid" do
    assert(AoC.DayFour.is_super_valid_passphrase("abcde xyz ecdab") == false)
  end

  test "longer passphrase with non anagrams is valid" do
    assert(AoC.DayFour.is_super_valid_passphrase("a ab abc abd abf abj") == true)
  end

  test "passphrase of all anagrams is not valid" do
    assert(AoC.DayFour.is_super_valid_passphrase("oiii ioii iioi iiio") == false)
  end

end
