defmodule Mars.Person do
  @derive [Poison.Encoder]
  defstruct [:name, :age]

  def decode do
    Poison.decode!(~s({"name": "Devin Torres", "age": 27}), as: %Mars.Person{})
  end

  def encode do
    Poison.encode!(%Mars.Person{name: "Devin Torres", age: 27})
  end
end