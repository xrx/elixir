defmodule GiTS do
  def run do
    receive do
      { sender, msg } ->
	send sender, {:ok, "Hello#{msg}" }
    end
  end
end

pid = spawn(GiTS, :run, [])
send pid, { self, ", Unit 9!" }

receive do
  { :ok, message } ->
    IO.puts message
end

	    
defmodule Unit9 do
  def run do
    receive do
      { sender, msg } ->
	send sender, { :ok, "Unit9: #{msg}" }
    end
  end
end

pid = spawn(Unit9, :run, [])
send pid, { self, "Are you there?" }
receive do
  { :ok, msg } ->
    IO.puts msg
end

send pid, { self, " Pls respond" }
receive do
  { :ok, msg } ->
    IO.puts msg
after 500 ->
  IO.puts "Noone's there :(!"
end


defmodule Tachikoma do
  def run do
    receive do
      { sender, msg } ->
	send sender, { :ok, "Tachi: #{msg}" }
	run
    end
  end
end

pid = spawn(Tachikoma, :run, [])
send pid, { self, "Hello, hello!" }

receive do
  { :ok, msg } ->
    IO.puts msg
end

send pid, { self, "Another message! :)" }

receive do
  { :ok, msg } ->
    IO.puts msg
after 500 ->
    IO.puts "Noone's there :(!"
end
