# ~w(hello there)
# ~w(hello #{there})a

# ~s("hello there")
# ~c('hello')
# ~r

defmodule MySigils do
  def sigil_x(content, _opts) do
    {num, _} = Integer.parse(content)
    num + 20
  end

  def print(number) do
    ~x(#{number})
  end
end

IO.inspect MySigils.print(20)

defmodule Imported do
  import MySigils

  def print(number) do
    ~x(#{number})
  end
end

IO.inspect Imported.print(20)