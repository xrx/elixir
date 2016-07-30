defmodule Monitor1 do
  import :timer, only: [ sleep: 1 ]

  def sad do
    sleep 500
    exit(:boom)
  end

  def run do
    res = spawn_monitor(Monitor1, :sad, [])
    IO.puts inspect res

    receive do
      msg ->
	IO.puts "Msg received: #{inspect msg}"
    after 1000 ->
      IO.puts "Nothing happened as far as I am concerned"
    end
  end
end

Monitor1.run
  
