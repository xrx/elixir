defmodule PipeTest do
  def times(n, x \\ 2), do: n * x

  def div_2(n), do: div(n, 2)
end

result = PipeTest.times(20, 4)
                 |> PipeTest.div_2
IO.puts(result)

times_two = PipeTest.times(40) |> Kernel.*(2)
IO.puts(times_two)

result = PipeTest.times(40) |> (&(&1 * &1)).()
IO.puts(result)