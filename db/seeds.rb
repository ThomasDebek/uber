User.destroy_all



p "Generating new user"
User.create(
  email: "dave@gmail.com",
  password: "secret"
)
p "done"