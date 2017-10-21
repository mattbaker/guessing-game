defmodule GuessingGame do

  def compare(n, t) do
    cond do
      n < t  -> :low
      n == t -> :equal
      n > t  -> :high
    end
  end

  def print_outcome(state) do
    case state do
      :low   -> IO.puts("Too low")
      :equal -> IO.puts("That's the right number, you win!")
      :high  -> IO.puts("Too high")
    end
  end

  def print_turns(0),     do: IO.puts("You have 0 turns left, You lose")
  def print_turns(turns), do: IO.puts("You have #{turns} turns left")

  def get_guess() do
    IO.gets("Guess a number: ")
      |> String.trim
      |> String.to_integer
  end

  def play(), do: main(Enum.random(1..100), 7)

  def main(_, 0), do: print_turns(0)
  def main(number, turns) do
    print_turns(turns)
    outcome = get_guess() |> compare(number)
    print_outcome(outcome)
    again?(number, turns, outcome)
  end

  def again?(_, _, true), do: nil
  def again?(number, turns, false), do: main(number,turns)

end

GuessingGame.play()
