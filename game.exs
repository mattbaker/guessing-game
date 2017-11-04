defmodule GuessingGame do

  #TODO: Greet player, explain game
  defp generate_answer do
    :rand.uniform(100)
  end
  #TODO: Get user guess


  defp check_user_answer(guess, answer) do
    cond do
      is_integer(guess) == false ->
        IO.puts("Please guess a number within 1 and 100")
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

GuessingGame.generate_answer |> IO.puts

