defmodule Guards do
  # def type_of(x) when is_number(x) do
  #   IO.puts "#{x} is a number!"
  # end

  def type_of(x) when is_list(x) do
    IO.puts "#{x} is a list!"
  end

  def type_of(x) when is_atom(x) do
    IO.puts "#{x} is an atom!"
  end

  def type_of(x) when rem(x, 2) == 0 do
    IO.puts "#{x} is even!"
  end

  def type_of(x) when rem(x, 2) != 0 do
    IO.puts "#{x} is not even!"
  end
end