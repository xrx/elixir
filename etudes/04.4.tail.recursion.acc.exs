defmodule Powers do
  def raise(n, x) do
    raise(n, x-1, 1)
  end

  defp raise(n, 1, acc), do: acc
  defp raise(n, x, acc) do
    raise(n, x-1, n*acc)
  end
end

IO.puts Powers.raise(2, 2)