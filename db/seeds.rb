i = 1

User.destroy_all
Event.destroy_all



ActiveRecord::Base.connection.reset_pk_sequence!('users') # pour repartir avec l'id 1

20.times do
  user = User.create(
    first_name: "prénom #{i}",
    last_name: "nom #{i}",
    email: "kubitestuser#{i}@yopmail.com",
    description: "bio #{i}",
    password: "123456",
  )
  i = i + 1
end

ActiveRecord::Base.connection.reset_pk_sequence!('events') # pour repartir avec l'id 1

10.times do
  event = Event.create(
    title: "titre #{i}",
    start_date: "20220530",
    duration: rand(60..6000),
    description: "description n° #{i}",
    price: rand(10..1000),
    location: "lieu #{i}",
    admin: User.all.sample
  )
  i += 1
end