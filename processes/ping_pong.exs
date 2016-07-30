defmodule Table do
  def ping(counter) do
    pid = spawn(__MODULE__, :pong, [counter+1])
    send pid, {self}

    receive do
      {parent} -> IO.puts "Ping! #{counter}"
    end
  end

  def pong(counter) do
    pid = spawn(__MODULE__, :ping, [counter + 1])
    send pid, {self}

    receive do
      {parent} -> IO.puts "Pong! #{counter}"
    end
  end
end


Table.ping(0)