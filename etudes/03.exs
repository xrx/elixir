# # Chapter 3. Atoms, Tuples, and Pattern Matching
# # 3-1
# defmodule Geom do
#   def area(:rectangle, length, width), do: length * width
#   def area(:triangle, base, height),   do: base * height / 2.0
#   def area(:ellipse, a, b),            do: :math.pi() * a * b
# end

# IO.puts Geom.area(:rectangle, 3, 4)
# IO.puts Geom.area(:triangle, 3, 5)
# IO.puts Geom.area(:ellipse, 2, 4)

# # 3-2
# # defmodule Geom do
#   # def area(:rectangle, length, width) when length > 0 and width > 0 do
#   #   length * width
#   # end

#   # # def area(:triangle, base, height) when base > 0 and height > 0 do
#   # #   base * height / 2.0
#   # # end

#   # # def area(:ellipse, a, b) when a > 0 and b > 0 do
#   # #   :math.pi() * a * b
#   # # end
# # end

# # IO.puts Geom.area(:rectangle, -3, 4)

# # 3-3
# defmodule Geom do
#   def area(_, _, _), do: 0
#   def area(:rectangle, length, width) when length > 0 and width > 0 do
#     length * width
#   end

#   def area(:triangle, base, height) when base > 0 and height > 0 do
#     base * height / 2.0
#   end

#   def area(:ellipse, a, b) when a > 0 and b > 0 do
#     :math.pi() * a * b
#   end
# end

# IO.puts Geom.area(:pentagon, 3, 4)
# IO.puts Geom.area(:ellipse, -1, 5)
# IO.puts Geom.area(:triangle, 5, -1)

defmodule Geom do
  def area({shape, a, b}) do
    area(shape, a, b)
  end

  defp area(:rectangle, length, width) when length > 0 and width > 0 do
    length * width
  end

  defp area(:triangle, base, height) when base > 0 and height > 0 do
    base * height / 2.0
  end

  defp area(:ellipse, a, b) when a > 0 and b > 0 do
    :math.pi() * a * b
  end

  defp area(_, _, _), do: 0
end

IO.puts Geom.area({:rectangle, 7, 3})
IO.puts Geom.area({:triangle, 7, 3})
IO.puts Geom.area({:ellipse, 7, 3})
IO.puts Geom.area({:pentagon, 7, 3})
Geom.area(:rectangle, 7, 3)