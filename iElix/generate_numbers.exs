numbers_gen = fn({up_to, op}) ->
  for number <- (0..up_to), op.(rem(number, 2), 0), number > 0 do
    number
  end
end

even   = numbers_gen.({20, &==/2})
uneven = numbers_gen.({20, &!=/2})

zipped = List.zip([uneven, even])
IO.inspect zipped
IO.inspect List.unzip(zipped)