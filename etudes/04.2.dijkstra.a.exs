defmodule Dijkstra do
  def gcd(m, n) when m > n do
    gcd(m-n, n)
  end

  def gcd(m, n) when m == n do
    m
  end

  def gcd(m, n) when m < n do
    gcd(m, (n-m))
  end
end

IO.puts Dijkstra.gcd(2, 8)
IO.puts Dijkstra.gcd(14, 21)
IO.puts Dijkstra.gcd(125, 46)
IO.puts Dijkstra.gcd(120, 36)