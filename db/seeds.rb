[
  {
    "name": "Spears Russell",
    "email": "spearsrussell@yogasm.com",
    "gender": 1,
    "about": "I'm Spears",
    "image_url": "http://placehold.it/32x32"
  },
  {
    "name": "Ann York",
    "email": "annyork@yogasm.com",
    "gender": 1,
    "about": "I'm Ann York",
    "image_url": "http://placehold.it/32x32"
  }
].each do |user_attrs|
  user = User.new(user_attrs)
  UserRepository.persist(user)
end