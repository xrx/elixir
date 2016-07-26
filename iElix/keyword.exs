klist = [hello: "friend", hello: "goodbye"]

IO.puts Keyword.get(klist, :hello)
IO.puts Keyword.get(klist, :empty)
IO.puts Keyword.has_key?(klist, :empty)
klist = Keyword.put_new(klist, :empty, "not anymore")
IO.puts Keyword.has_key?(klist, :empty)
klist = Keyword.put(klist, :hello, "updated!")
IO.inspect klist
# IO.puts Keyword.fetch!(klist, :fails)

atomic_info = [{:hydrogen, :H, 1.008}, {:carbon, :C, 12.011}, {:sodium, :Na, 22.99}]
IO.inspect List.keyfind(atomic_info, :H, 1)
IO.inspect List.keyfind(atomic_info, :Na, 0, "a default value")
IO.puts List.keymember?(atomic_info, :Na, 1)
atomic_info = List.keydelete(atomic_info, :carbon, 0)
IO.inspect atomic_info