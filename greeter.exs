greeter = fn name -> fn -> "Hello #{name}!" end end

ok = greeter.("Dan")
IO.puts ok.()