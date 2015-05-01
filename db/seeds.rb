Show.create(
  title: "Shark Tank",
  description: "Entreprenuers present business concepts",
  air_day: "Friday",
  air_time: "21:00",
  rating: 3,
  channel_id: 1,
  genre_id: 1 )

#1
Genre.create(
  name: "Reality")
#2
Genre.create(
  name: "Comedy")
#3
Genre.create(
  name: "Drama")

#1
Channel.create(
  name: "ABC")
#2
Channel.create(
  name: "NBC")


Show.create(
  title: "Modern Family",
  description: "An honest, often hilarious, perspective of family life.",
  air_day: "Tuesday",
  air_time: "7:00pm",
  rating: 4.2,
  channel_id: 1,
  genre_id: 2 )

Actor.create(
  name: "Mark Cuban",
  gender: "male",
  age: 32)

Actor.create(
  name: "Julie Bowen",
  gender: "Female",
  age: 30)

Character.create(
  actor_id: 1,
  show_id: 1,
  name: "Mark Cuban")

Character.create(
  actor_id: 2,
  show_id: 2,
  name: "Claire Dunphy")

