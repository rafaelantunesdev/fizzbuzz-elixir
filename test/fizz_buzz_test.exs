defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, returns the converted list" do
      expected_response = [
        1,
        2,
        :fizz,
        4,
        :buzz,
        :fizz,
        :buzz,
        :fizzbuzz,
        :buzz,
        :fizzbuzz,
        :buzz
      ]

      assert FizzBuzz.build("numbers.txt") == expected_response
    end

    test "when an invalid file is provided, return an error message" do
      expected_response = "Error reading the file: enoent"
      assert FizzBuzz.build("invalid.txt") == expected_response
    end
  end
end
