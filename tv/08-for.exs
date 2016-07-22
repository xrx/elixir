for word <- ["I'm", "Hungry"] do
  IO.puts word
end

Enum.map(["Is dinner", "ready"], fn(name) ->
  IO.puts name
end)


x = for name <- ["Bart", "Lisa", "Homer", "Marge"],
    last <- ["Simpson"] do
  "#{name} #{last}"
end

IO.inspect x


products = [{:jeans, 37}, {:music, 29}, {:jeans, 25}]

for {category, price} <- products,  price > 25, category == :jeans do
  IO.puts "#{category} #{price}"
end

m = for {key, val} <- %{name: "Wilson", age: 24, lang: "us-en"},
    key in [:name, :lang],
    into: %{} do
  {key, val}
end

IO.inspect m

names = for name <- ["Paty", "Selma"], do: String.upcase(name)
IO.puts names


even = fn(up_to) ->
  for number <- (0..up_to), rem(number, 2) == 0, number > 0 do
    number
  end
end

IO.inspect even.(20)