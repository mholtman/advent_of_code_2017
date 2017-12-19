defmodule AoC.DayFourTest do
  use ExUnit.Case

  test "password is not valid passphrase" do
    AoC.DayFour.is_valid_passphrase("singleword") == false
  end

  test "passphrase with unique words is valid" do
    AoC.DayFour.is_valid_passphrase("valid password") == true
  end

  test "passphrase with repeated words is invalid" do
    AoC.DayFour.is_valid_passphrase("invalid invalid password") == false
  end
end
