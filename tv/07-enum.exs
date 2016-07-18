# Enum.concat

IO.puts Enum.at([1,2,3], 1, :default)

# Returns a tuple
IO.inspect Enum.at(%{name: "Wilson"}, 0, :default)

# Enum.filter

Enum.filter %{name: "Wilson", age: 24}, fn({_key, val}) -> is_binary(val) end

m = Enum.reduce ["my_path", "to", "somewhere"], "", fn(segment, acc) -> acc <> "/" <> segment end
IO.puts m

m = Enum.reduce [1, 2, 3], &(&1 + &2)
IO.puts m

m = Enum.reduce [10, 20, 30], &+/2
IO.puts m

Enum.into(%{a: 1}, %{b: 2})
Enum.into([2, 3], [3], fn x -> x * 3 end)

Enum.join([1, 2, 3])
Enum.join([1, 2, 3], " = ")

Enum.max_by(["a", "aa", "aaa"], fn(x) -> String.length(x) end)
Enum.max_by(["a", "aa", "aaa", "b", "bbb"], &String.length/1)

Enum.member?(1..10, 5)
Enum.member?([1.0, 2.0, 3.0], 2.000)
Enum.member?([:a, :b, :c], :d)
Enum.min_max_by(["aaa", "a", "bb", "c", "ccc"], &String.length/1)

Enum.slice(1..100, 5, 10)
Enum.slice(1..100, 5..10)

Enum.sort([1, 2, 3], &(&1 > &2))
Enum.sort_by ["some", "kind", "of", "monster"], &byte_size/1


Enum.split([1, 2, 3], 2)
Enum.split([1, 2, 3], -1)
Enum.split([1, 2, 3], -5)

# Enum.take

