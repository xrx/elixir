# elixir -r link2.exs

defmodule Link2 do
  import :timer, only: [ sleep: 1 ]

  def sad do
    sleep 500
    exit(:boom)
  end

  def run do
    spawn_link(Link2, :sad, [])

    receive do
      msg ->
	IO.puts "Msg received: #{inspect msg}"
    after 1000 ->
	IO.puts "Nothing happened as far as I am concerned"
    end
  end
end

Link2.run
