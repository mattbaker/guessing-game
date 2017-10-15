# Elixir Guessing Game

This is a coding exercise to get an introduction to Elixir (and functional programming). It’s simple, but hits many of Elixir’s core concepts and language features.

The most important part is not implementing the game (though that's a requirement), but getting feedback and going through a few iterations. Feel free to fork and submit a PR, I will happily provide feedback!

## Task
Create a guessing game. The computer should pick a random number between 1 and 100.

The game should prompt the user to guess, and indicate whether each guess is too
high, too low, or correct. You should also print a message when the game ends.

The number of chances you give a user is up to you.

To get you started: IO.puts will print to STDOUT, IO.gets will read from STDIN.

You may instinctively try to reach for Elixir's `for` list comprehension, but I would advise against that.

## Running:
You can access this code in iex and play around by importing the file.

```
$ iex
Erlang/OTP 20 [erts-9.0] [source] [64-bit] [smp:4:4] [ds:4:4:10] [async-threads:10] [hipe] [kernel-poll:false] [dtrace]

Interactive Elixir (1.5.1) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> import_file("example.exs")
:ok
iex(2)> GuessingGame.foo()
hello world
:ok
```

You can reload the file simply by calling `import_file` again.
If you're seeing weird behavior don't hestitate to kill iex and
try again, but it shouldn't be problem with something this small.

You can also put code at the bottom of this file and simply run `elixir example.exs`
like you would with "runner code" in Ruby.
