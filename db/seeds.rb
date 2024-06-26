# Clear existing data
User.destroy_all
Post.destroy_all
Comment.destroy_all
Favorite.destroy_all

# Create users
user1 = User.create!(
  email: 'user1@example.com',
  password: 'password'
)

user2 = User.create!(
  email: 'user2@example.com',
  password: 'password'
)

# Create posts
post1 = Post.create!(
  context: 'This is the first post.',
  user_id: user1.id
)

post2 = Post.create!(
  context: 'This is the second post.',
  user_id: user2.id
)

# Create comments
Comment.create!(
  content: 'This is a comment on the first post.',
  user_id: user2.id,
  post_id: post1.id
)

Comment.create!(
  content: 'This is a comment on the second post.',
  user_id: user1.id,
  post_id: post2.id
)

# Create favorites
Favorite.create!(
  user_id: user1.id,
  post_id: post2.id
)

Favorite.create!(
  user_id: user2.id,
  post_id: post1.id
)
