defmodule Example do
  def func(p1, p2 \\ 2, p3 \\ 3, p4) do
    IO.inspect [p1, p2, p3, p4]
  end
end

Example.func("taylor", "swfit")             # => ["a",2,3,"b"]
Example.func("taylor", "swfit", "c")        # => ["a","b",3,"c"]
Example.func("taylor", "swift", "c", "d")   # => ["a","b","c","d"]