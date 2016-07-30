defmodule LetterChain do
  def chain(collection) do
    collection
    |> Enum.map(&spawn_process(&1, self))
    |> Enum.map(&await/1)
  end

  def spawn_process(item, parent) do
    spawn_link fn ->
      send parent, {self, item}
    end
  end

  def await(pid) do
    receive do
      {^pid, result} -> result
    end
  end
end

IO.inspect LetterChain.chain(97..120)