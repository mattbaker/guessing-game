defmodule GuessingGame do

  def compare(n, t) do
    cond do
      n < t -> :low
      n == t -> :equal
      n > t -> :high
    end
  end

  def print_state(:low),      do: IO.puts("Too low")
  def print_state(:equal),    do: IO.puts("That's the right number, you win!")
  def print_state(:high),      do: IO.puts("Too high")
  # def print_state(direction), do: IO.puts("Too #{direction}") # Too clever?
  def print_turns(0),         do: IO.puts("You have 0 turns left, You lose")
  def print_turns(turns),     do: IO.puts("You have #{turns} turns left")

  def get_guess() do
    IO.gets("Guess a number: ")
      |> String.trim
      |> String.to_integer
  end

  def play(), do: main(Enum.random(1..100), 7)

  def main(number, turns) do
    print_turns(turns)
    if (turns > 0) do
      state = get_guess() |> compare(number)
      print_state(state)
      if (state != :equal) do
        main(number, turns-1)
      end
    end
  end

end

GuessingGame.play()
