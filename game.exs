defmodule GuessingGame do

  def hi() do
    IO.puts("hello world")
  end

  def check_user_answer(guess, answer) when guess > 100 or guess < 0 do
    IO.puts("Please guess within 1 and 100")
  end

  def check_user_answer(guess, answer) when guess == answer do
    IO.puts("Correct! #{guess} is the correct answer")
  end

  def check_user_answer(guess, answer) when guess < answer do
    IO.puts("Sorry, #{guess} is too low.")
  end

  def check_user_answer(guess, answer) when guess > answer do
    IO.puts("Sorry, #{guess} is too high.")
  end

end

GuessingGame.check_user_answer(3,3)
GuessingGame.check_user_answer(1,3)
GuessingGame.check_user_answer(10,3)
GuessingGame.check_user_answer(-1,3)
GuessingGame.check_user_answer(300,3)
GuessingGame.check_user_answer("a",3)
