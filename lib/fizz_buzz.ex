defmodule FizzBuzz do
  @moduledoc """
  Documentation for `FizzBuzz`.
  """

  @doc """
  It that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number
  and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”

  ## Examples

    iex> FizzBuzz.execute(0)
    "0"

    iex> FizzBuzz.execute(3)
    "Fizz"

    iex> FizzBuzz.execute(5)
    "Buzz"

    iex> FizzBuzz.execute(15)
    "FizzBuzz"

    iex> FizzBuzz.execute(98)
    "98"

    iex> FizzBuzz.execute(9)
    "Fizz"

    iex> FizzBuzz.execute(10)
    "Buzz"

    iex> FizzBuzz.execute(30)
    "FizzBuzz"

  """
  @spec execute(integer) :: String.t
  def execute(0), do: "0"
  def execute(n) when rem(n,5) == 0 and rem(n,3)==0, do: "FizzBuzz"
  def execute(n) when rem(n,5) == 0,do: "Buzz"
  def execute(n) when rem(n, 3) == 0, do: "Fizz"
  def execute(n), do: "#{n}"

  def rundown() do
    Enum.each(100..0, fn n -> n |> execute |> IO.puts end)
  end
end
