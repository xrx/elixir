defmodule MyList do
  def reverse(list) do
    IO.puts("original: #{inspect(list)}")
    do_reverse(list, [])
  end

  def do_reverse([], acc), do: acc

  def do_reverse([h|t], acc) do
   do_reverse(t, [h|acc])
  end
end

m = MyList.reverse([2, 3, 4, 5, 10, 20])
IO.inspect(m)

m = MyList.reverse([2])
IO.inspect(m)

m = MyList.reverse([])
IO.inspect(m)