timetable = %{mareena: "00:00", refracted: "03:00", claudia_anderson: "04:00"}

updated = %{timetable | claudia_anderson: "05:00"}

IO.inspect updated

updated = Map.merge(updated, %{zadig: "07:30"})
IO.inspect updated

updated = Map.put(updated, :pacou, "10:00")
IO.inspect updated

chosen = Map.take(updated, [:mareena, :zadig, :pacou])
IO.inspect chosen

%{pacou: pacou_time} = chosen
IO.inspect pacou_time