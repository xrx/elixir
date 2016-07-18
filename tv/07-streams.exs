list = [1,2,3]

# Iterates through the list once
list
|> Stream.each(fn(n) -> IO.puts(n) end)
|> Stream.run

list = ["Wilson", 1, 2, %{hello: "friend"}, 7, 5, 10, 12, 13]

stream = Stream.filter(list, &is_number/1)
stream = Stream.filter(stream, &(rem(&1, 2) == 0))
IO.inspect "Stream!: #{inspect stream}"
IO.inspect Enum.into(stream, [])

# Stream.cycle

# Stream.iterate

# Stream.resource

letters = 97..122

m = Stream.iterate(letters, fn(l) ->
  IO.inspect(l)
  |> Stream.cycle
  |> Stream.take(Enum.random(1..30))
  |> Enum.into([])
end)
|> Enum.take(20)

IO.inspect(m)


range = 1..3
stream = Stream.map(range, &(&1 * 2))
Enum.map(stream, &(&1 + 1))