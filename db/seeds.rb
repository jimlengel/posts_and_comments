# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.create(body: "This is an interesting blog post.")
Post.create(body: "This is another interesting blog post.")
Comment.create(body: "This is a comment of a blog post.", post_id: 1)
Comment.create(body: "This is another comment of a blog post.", post_id: 2)
Comment.create(body: "This is the most interesting comment of a blog post.", post_id: 1)
Tag.create(name: "interesting")
Tag.create(name: "funny")
Tag.create(name: "boring")
PostTag.create(post_id: 1, tag_id: 2)
PostTag.create(post_id: 1, tag_id: 3)
PostTag.create(post_id: 2, tag_id: 1)
PostTag.create(post_id: 2, tag_id: 2)



# posts
# has_many :comments
# (which is short for // has_many :comments, class_name: :Comment, foreign_key: :post_id)
# has_many :post_tags
# has_many :tags, through: :post_tags
# id
# body

# comments
# belongs_to :post
# (which is short for // belongs_to :post, class_name: :Post, foreign_key: :post_id)
# id
# body
# post_id

# tags
# id
# name

# post_tags
# belongs_to :post
# belongs_to :tag
# has_many :post_tags
# has_many :posts, through: :post_tags
# id
# post_id
# tag_id