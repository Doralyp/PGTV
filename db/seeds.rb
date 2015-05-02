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

Show.create(
  title: "Law and Order",
  description: "Depicts ficticious law and order cases in NYC.",
  air_day: "Wednesday",
  air_time: "9:00pm",
  rating: 3.9,
  channel_id: 2,
  genre_id: 3 )

Show.create(
  title: "The Office",
  description: "A mockumentary on a group of typical office workers, where the workday consists of ego clashes, inappropriate behavior, and tedium.",
  air_day: "Monday",
  air_time: "6:00pm",
  rating: 4.9,
  channel_id: 2,
  genre_id: 2 )

Show.create(
  title: "The Tonight Show",
  description: "Jimmy Fallon hosts the tonight show and interviews celebrities, plays games with them and has a musical or comedic guest perform.",
  air_day: "Thursday",
  air_time: "10:00pm",
  rating: 4.4,
  channel_id: 2,
  genre_id: 1 )

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

Character.create(
  actor_id: "Rainn Wilson",
  show_id: 4,
  name: "Dwight Schrute")

Character.create(
  actor_id: "Mariska Hargitay",
  show_id: 3,
  name: "Olivia Benson")


