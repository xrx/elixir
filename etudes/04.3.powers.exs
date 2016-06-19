defmodule Powers do
  import Kernel, except: [raise: 2]

  def raise(n, 1), do: n
  def raise(_, 0), do: 1
  # def raise(n, x) when n < 0 do
  #   1.0
  # end

  def raise(n, x) do
    n * raise(n, x-1)
  end
end

IO.puts Powers.raise(3, 3)
IO.puts Powers.raise(5,1)
IO.puts Powers.raise(2,3)
IO.puts Powers.raise(1.2, 3)
IO.puts Powers.raise(2, 0)
IO.puts Powers.raise(52, 6)