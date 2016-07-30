# elixir -r link3.exs

defmodule Link3 do
  import :timer, only: [ sleep: 1 ]

  def sad do
    sleep 500
    exit(:boom)
  end

  def run do
    Process.flag(:trap_exit, true)
    spawn_link(Link3, :sad, [])

    receive do
      msg ->
	IO.puts "Msg received: #{inspect msg}"
    after 1000 ->
	IO.puts "Nothing happened as far as I am concerned"
    end
  end
end

Link3.run
