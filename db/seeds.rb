#1
Genre.create(
  name: "Reality")
#2
Genre.create(
  name: "Comedy")
#3
Genre.create(
  name: "Drama")
#4
Genre.create(
  name: "Horror")
#5
Genre.create(
  name: "Action")
#6
Genre.create(
  name: "Kids")
#7
Genre.create(
  name: "Romantic")
#8
Genre.create(
  name: "Thriller")
#9
Genre.create(
  name: "Sci-Fi")
#10
Genre.create(
  name: "Fantasy")


#1
Channel.create(
  name: "ABC",
  photo: "https://lh3.googleusercontent.com/-fGQF_yWGUYg/AAAAAAAAAAI/AAAAAAAABsY/7yPEtQ2bXbc/s120-c/photo.jpg")
#2
Channel.create(
  name: "NBC",
  photo: "https://lh3.googleusercontent.com/-uzyXF69-Rhg/AAAAAAAAAAI/AAAAAAAAI_Q/gqfapyE3YHA/s120-c/photo.jpg")
#3
Channel.create(
  name: "Oxygen",
  photo: "http://thecomicscomic.com/wp-content/uploads/2014/04/Oxygen-Media-logo.jpg")
#4
Channel.create(
  name: "HBO",
  photo: "http://upload.wikimedia.org/wikipedia/commons/thumb/d/de/HBO_logo.svg/215px-HBO_logo.svg.png")
#5
Channel.create(
  name: "CNN",
  photo: "https://lh3.googleusercontent.com/-WhEkV_gow-I/AAAAAAAAAAI/AAAAAAAAVAU/6_CJUAkusQ0/s120-c/photo.jpg")
#6
Channel.create(
  name: "TNT",
  photo: "https://lh3.googleusercontent.com/-KQRn15GcpiA/AAAAAAAAAAI/AAAAAAAABFY/pS8GFV5C8Eo/s120-c/photo.jpg")
#7
Channel.create(
  name: "Discovery Channel",
  photo: "http://upload.wikimedia.org/wikipedia/en/thumb/c/c7/Discovery_Communications.svg/200px-Discovery_Communications.svg.png")
#8
Channel.create(
  name: "Lifetime",
  photo: "https://lh3.googleusercontent.com/-B6Ik9Cag8L8/AAAAAAAAAAI/AAAAAAAAAy8/vLnlvVhH68Y/s120-c/photo.jpg")
#9
Channel.create(
  name: "MTV",
  photo: "https://lh3.googleusercontent.com/-a0eOWP9wxWo/AAAAAAAAAAI/AAAAAAABA9g/rsKGeDkZ56o/s120-c/photo.jpg")
#10
Channel.create(
  name: "Telemundo",
  photo: "https://lh3.googleusercontent.com/-L1wc522i16E/AAAAAAAAAAI/AAAAAAAAEbg/QBSPjR380zQ/s120-c/photo.jpg")

#1
Show.create(
  title: "Shark Tank",
  description: "Entreprenuers present business concepts",
  air_day: "Friday",
  air_time: "21:00",
  # #rating: "3",
  channel_id: 1,
  genre_id: 1,
  photo: "http://ia.media-imdb.com/images/M/MV5BNDE2NTEzMzUxNV5BMl5BanBnXkFtZTgwNTYwMTE5MjE@._V1_SX640_SY720_.jpg" )

#2
Show.create(
  title: "Modern Family",
  description: "An honest, often hilarious, perspective of family life.",
  air_day: "Tuesday",
  air_time: "7:00pm",
  #rating: "4",
  channel_id: 1,
  genre_id: 2,
  photo: "http://ia.media-imdb.com/images/M/MV5BMTg3ODU2Mzg0NV5BMl5BanBnXkFtZTgwOTU5MDE5MjE@._V1_SX640_SY720_.jpg" )

#3
Show.create(
  title: "Law and Order",
  description: "Depicts ficticious law and order cases in NYC.",
  air_day: "Wednesday",
  air_time: "9:00pm",
  #rating: "3",
  channel_id: 2,
  genre_id: 3,
  photo: "http://ia.media-imdb.com/images/M/MV5BMjE3NzMxOTI4M15BMl5BanBnXkFtZTgwMzE1ODg3MjE@._V1_SX640_SY720_.jpg" )

#4
Show.create(
  title: "The Office",
  description: "A mockumentary on a group of typical office workers, where the workday consists of ego clashes, inappropriate behavior, and tedium.",
  air_day: "Monday",
  air_time: "6:00pm",
  #rating: "4",
  channel_id: 2,
  genre_id: 2,
  photo: "http://ia.media-imdb.com/images/M/MV5BMTgzNjAzMDE0NF5BMl5BanBnXkFtZTcwNTEyMzM3OA@@._V1_SX640_SY720_.jpg" )

#5
Show.create(
  title: "The Tonight Show",
  description: "Jimmy Fallon hosts the tonight show and interviews celebrities, plays games with them and has a musical or comedic guest perform.",
  air_day: "Thursday",
  air_time: "10:00pm",
  #rating: "4",
  channel_id: 3,
  genre_id: 1,
  photo: "http://ia.media-imdb.com/images/M/MV5BMTczNjI3MTQ1M15BMl5BanBnXkFtZTgwMDgyNTAwMTE@._V1_SX640_SY720_.jpg" )

#6
Show.create(
  title: "Gotham",
  description: "The story behind Commissioner James Gordon's rise to prominence in Gotham City in the years before Batman's arrival.",
  air_day: "Thursday",
  air_time: "8:00pm",
  #rating: "4",
  channel_id: 4,
  genre_id: 4,
  photo: "http://ia.media-imdb.com/images/M/MV5BMjMzNTU3MDY3OF5BMl5BanBnXkFtZTgwMjY1Nzg3MTE@._V1_SX640_SY720_.jpg")

#7
Show.create(
  title: "House of Cards",
  description: "A Congressman works with his equally conniving wife to exact revenge on the people who betrayed him.",
  air_day: "Friday",
  air_time: "5:00pm",
  #rating: "5",
  channel_id: 5,
  genre_id: 3,
  photo: "http://ia.media-imdb.com/images/M/MV5BMTY1NDcwMDcxN15BMl5BanBnXkFtZTgwMDI1NTQzNDE@._V1_SX640_SY720_.jpg")

#8
Show.create(
  title: "The Following",
  description: "A brilliant and charismatic, yet psychotic serial killer communicates with other active serial killers and activates a cult of believers following his every command.",
  air_day: "Monday",
  air_time: "10:00pm",
  #rating: "5",
  channel_id: 6,
  genre_id: 4,
  photo: "http://ia.media-imdb.com/images/M/MV5BMTUxNTk0MjUwOV5BMl5BanBnXkFtZTgwOTE4MDc2NDE@._V1_SX640_SY720_.jpg")

#9
Show.create(
  title: "Bob's Burgers",
  description: "Bob's Burgers centers on the Belcher family (consists of Bob, Linda, Tina, Gene and Louise) who own a hamburger restaurant. Bob's burgers are really delicious and appear to be better than his rivals' but when it comes to selling burgers, his kids aren't really helpful, as more customers head over to Jimmy Pesto's restaurant.",
  air_day: "Wednesday",
  air_time: "7:00pm",
  #rating: "4",
  channel_id: 8,
  genre_id: 6,
  photo: "http://ia.media-imdb.com/images/M/MV5BMTg2MzI0NTQ3OV5BMl5BanBnXkFtZTgwODMyMzc1MDE@._V1_SX640_SY720_.jpg" )

#10
Show.create(
  title: "Sleepy Hollow",
  description: "Ichabod Crane is resurrected and pulled two and a half centuries through time to unravel a mystery that dates all the way back to the founding fathers.",
  air_day: "Monday",
  air_time: "9:00pm",
  #rating: "1",
  channel_id: 5,
  genre_id: 10,
  photo: "http://ia.media-imdb.com/images/M/MV5BODk0Nzg3OTAwMF5BMl5BanBnXkFtZTgwNDM0OTIzMDE@._V1_SX640_SY720_.jpg")

#1
Actor.create(
  name: "Mark Cuban",
  gender: "male",
  age: 32)

#2
Actor.create(
  name: "Julie Bowen",
  gender: "female",
  age: 25)

#3
Actor.create(
  name: "Sandra Bullock",
  gender: "female",
  age: 30)

#4
Actor.create(
  name: "Orlando Jones",
  gender: "male",
  age: 40)

#5
Actor.create(
  name: "Lyndie Greenwoodn",
  gender: "female",
  age: 38)

#6
Actor.create(
  name: "Katia Winter",
  gender: "female",
  age: 20)

#7
Actor.create(
  name: "Angélica Celaya",
  gender: "female",
  age: 28)

#8
Actor.create(
  name: "Yoli Ryan",
  gender: "Female",
  age: 30)

#9
Actor.create(
  name: "Harold Perrineau",
  gender: "male",
  age: 53)

#10
Actor.create(
  name: "Charles Halford",
  gender: "male",
  age: 35)


#1
Character.create(
  actor_id: 1,
  show_id: 1,
  name: "Mark Cuban")

#2
Character.create(
  actor_id: 2,
  show_id: 2,
  name: "Claire Dunphy")

#3
Character.create(
  actor_id: 3,
  show_id: 4,
  name: "Dwight Schrute")
#4
Character.create(
  actor_id: 4,
  show_id: 3,
  name: "Olivia Benson")

#5
Character.create(
  actor_id: 8,
  show_id: 5,
  name: "Zack Mille")

#6
Character.create(
  actor_id: 5,
  show_id: 6,
  name: "Bonnie Stewart")


#7
Character.create(
  actor_id: 7,
  show_id: 6,
  name: "Samantha Brady")

#8
Character.create(
  actor_id: 8,
  show_id: 6,
  name: "Britney Spears")

#9
Character.create(
  actor_id: 9,
  show_id: 6,
  name: "Juan Lopez")

#8
Character.create(
  actor_id: 10,
  show_id: 7,
  name: "Gregorio Santos")