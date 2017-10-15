defmodule GuessingGame do

  def puts_high_low(n, t) do
    if (n < t) do
      IO.puts("Too Low")
    else
      IO.puts("Too High")
    end
  end

  def win() do
    IO.puts("That's the right number, you win!")
  end

  def get_guess() do
    input = String.trim(IO.gets("Guess a number: "))
    if Regex.match?(~r/^[0-9]+$/, input) do
      String.to_integer(input)
    else
      IO.puts("Input only digits please (0-9)")
      get_guess()
    end
  end

  def play() do
    main(Enum.random(1..100))
  end

  def main(number) do
    guess = get_guess()
    if (guess == number) do
      win()
    else
      puts_high_low(guess, number)
      main(number)
    end
  end
end

GuessingGame.play()
