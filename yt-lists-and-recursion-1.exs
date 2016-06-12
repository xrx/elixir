defmodule MyList do
  def mapsum([], _) do
    0
  end

  def mapsum([head | tail], func) do
    func.(head) + mapsum(tail, func)
  end

  def max([]), do: 0
  def max([head | tail]) when head > max(tail) do
    head
  end

  def max([head | tail]) when head < max(tail) do
    0
  end
end

# MyList.mapsum [1, 2, 3], &(&1 * &1)