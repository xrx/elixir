pid = spawn(fn -> IO.puts "hello" end)

send pid, :hello

defmodule Speaker do
  def speak do
    receive do
      {:hello, msg} ->
        IO.puts "Hello: #{msg}"
        speak
      {:none, msg} ->
	IO.puts "From emacs :~}"
      _other ->
        IO.puts "here"
        speak
    end
  end
end

pid = spawn(Speaker, :speak, [])
send pid, {:hello, "World!"}
send pid, {:none, "Hello, Friend!"}
# pid = spawn(Speaker, :speak, [:none])
