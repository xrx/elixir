prefixed = fn prefix -> (fn suffix -> IO.puts("#{prefix} #{suffix}") end) end

mrs = prefixed.("Mrs.")
mrs.("Smith")
prefixed.("Elixir").("Rocks")