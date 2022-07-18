defmodule StringCalculatorTest do
  use ExUnit.Case
  doctest StringCalculator

  describe "Step 1" do
    test "Input with empty string " do
      assert StringCalculator.add("") == 0
    end

    test "Input with 1 " do
      assert StringCalculator.add("1") == 1
    end

    test "Input with 1,2 " do
      assert StringCalculator.add("1,2") == 3
    end
  end

  describe "Step 2" do
    test "Allow the add function to handle an unknown amount of numbers" do
      assert StringCalculator.add("1,2,3") == 6
      assert StringCalculator.add("50,50") == 100
    end
  end

  describe "Step 3" do
    test "Allow the Add function to handle new lines between numbers (instead of commas)." do
      assert StringCalculator.add("1\n2,3") == 6
    end
  end
end
