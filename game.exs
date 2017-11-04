defmodule GuessingGame do
  
  def runner do
    start_game
    answer = generate_answer
    get_user_guess
    |>check_user_answer(answer)
  end

  defp start_game do
    IO.puts("-=Fun Elixir Guessing Game=-")
    IO.puts("I'll pick a number between 1 and 100 and you try to guess it.")
  end

  defp generate_answer do
    :rand.uniform(100)
  end

  defp get_user_guess do
    guess = IO.gets "What is your guess?\n"
    String.replace(guess, "\n", "")
    |> String.to_integer
  end

  defp check_user_answer(guess, answer) do
    cond do
      guess > 100 or guess < 0 ->
        IO.puts("Please guess within 1 and 100")
      guess < answer ->
        IO.puts("Sorry, #{guess} is too low.")
      guess > answer ->
        IO.puts("Sorry, #{guess} is too high.")
      guess == answer ->
        IO.puts("Correct! #{guess} is the correct answer")
    end
  end

  #TODO: End game if answer correct
  #TODO: Implement chances
end

GuessingGame.runner
