defmodule GuessingGame do

  def compare(n, t) do
    # Best Practice ?

    # a)
    # case n do
    #   m when m < t -> :low
    #   m when m == t -> :equal
    #   m when m > t -> :high
    # end

    # b)
    cond do
      n < t -> :low
      n == t -> :equal
      n > t -> :high
    end
  end

  def print_state(state) do
    case state do
      :low -> IO.puts("Too low")
      :equal -> IO.puts("That's the right number, you win!")
      :high -> IO.puts("Too high")
    end
  end

  def print_turns(turns) do
    IO.puts("You have #{turns} turns left")
    if (turns == 0) do
      IO.puts("You lose")
    end
  end

  def get_guess() do
    IO.gets("Guess a number: ") |> String.trim |> String.to_integer
  end

  def play() do
    main(Enum.random(1..100), 7)
  end

  def turn(number) do
    state = get_guess() |> compare(number)
    print_state(state)
    state == :equal
  end

  def main(number, turns) do
    print_turns(turns)
    if (turns > 0 && !turn(number)) do
      main(number, turns-1)
    end
  end
end

GuessingGame.play()
