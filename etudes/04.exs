# Chapter 4. Logic and Recursion
# 4.1
defmodule Geom do
  def area(shape, a, b) when a > 0 and b > 0 do
    case shape do
      :rectangle ->
        a * b
      :triangle ->
        a * b / 2.0
      :ellipse ->
        :math.pi() * a * b
    end
  end
end

IO.puts Geom.area(:rectangle, 3, 4)
IO.puts Geom.area(:triangle, 3, 4)
IO.puts Geom.area(:ellipse, 3, 4)