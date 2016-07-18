# List.flatten

defmodule MyList do
  def map(list, fun) do
    do_map(list, fun, [])
  end

  defp do_map([], _fun, acc) do
    :lists.reverse(acc)
  end

  defp do_map([h|t], fun, acc) do
    result = fun.(h)
    acc = [result | acc]
    do_map(t, fun, acc)
  end
end

list = [{"Wilson", 24}, {"Combat", 26}, {"Harvey", 40}]
# Wilson, Combat, Harvey
MyList.map(list, fn({name, _age}) -> IO.puts(name) end)