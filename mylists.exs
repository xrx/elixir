defmodule MyList do
  def len([]), do: 0
  def len([_head | tail]), do: 1 + len(tail)

  def print([]),  do: []
  def print([head|tail]) do
    IO.puts head
    print(tail)
  end

  def square([]),            do: []
  def square([head | tail]), do: [ head*head | square(tail)]

  def add_1([]),            do: []
  def add_1([head | tail]), do: [ head + 1 | add_1(tail) ]

  def map([], _func),           do: []
  def map([head | tail], func), do: [func.(head) | map(tail, func) ]

  def sum([]),            do: 0
  def sum([head | tail]), do: head + sum(tail)

  def reduce([], value, _) do
    value
  end

  def reduce([head | tail], value, func) do
    reduce(tail, func.(head, value), func)
  end
end