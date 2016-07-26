timetable = Enum.into([mareena: "00:00", refracted: "03:00", claudia_anderson: "05:00"], HashDict.new())

IO.inspect timetable

IO.inspect HashDict.get(timetable, :mareena)
timetable = HashDict.put_new(timetable, :zadig, "06:30")
IO.inspect timetable
timetable = HashDict.put(timetable, :zadig, "07:30")
IO.inspect timetable

IO.inspect timetable[:mareena]