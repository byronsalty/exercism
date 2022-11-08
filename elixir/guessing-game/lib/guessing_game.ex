defmodule GuessingGame do
  def compare(secret_number, guess \\ :no_guess)
  def compare(_, :no_guess) do
    "Make a guess"
  end
  def compare(x, x) do
    "Correct"
  end
  def compare(x, y) when abs(x-y) == 1 do
    "So close"
  end
  def compare(correct, guess) when guess < correct  do
    "Too low"
  end
  def compare(correct, guess) when guess > correct  do
    "Too high"
  end
end
