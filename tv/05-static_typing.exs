defmodule User do
  defstruct name: nil, age: nil

    
   def name_and_age(%User{} = user) do
     user.name <> ", " <> to_string(user.age)
   end

   def name_and_age(unsupported) do
     raise "name_and_age does not support #{inspect unsupported}"
   end
end

#me = %User{name: "Wilson", age: 24}
#User.name_and_age(me)

