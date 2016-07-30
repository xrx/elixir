defmodule Pmap do
  def pmap(collection, fun) do
    parent = self
    collection
    |> Enum.map(fn(elem) -> 
	spawn_link fn -> (send parent, { self, fun.(elem) }) end
    end)
    |> Enum.map(fn(pid) ->
      receive do
    	{^pid, result} -> result end
    end)
  end
end


IO.inspect Pmap.pmap 1..200, &(&1 * 2)
