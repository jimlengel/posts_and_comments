## Directions

Clone or download the repository.

Go to the appropriate directory using your terminal.

In the terminal:

`bundle`

`rails db:create`

`rails db:migrate`

`rails db:seed`

`rails server`

If you go to localhost:3000 in a browser and you see "Yay! You're on Rails!", you are ready to play with the associations.


In the terminal, open the Rails console:

`rails console`

In the console, create two variable for the first and second posts:

`first_post = Post.first`

`second_post = Post.second`

In your project, refer to the app/models folder. The assocations have been written for you. Go to post.rb. You can see that a post has_many tags (the second has_many).

In the console:

`first_post.tags`

This return a collection of tags.

`first_post.tags[0]`

This returns the first tag associated with this post. A post has many tags, and this is the value of the first tag.

`first_post.tags[0].name`

This returns "funny," which is the value of the name field.

Now write this:

`second_post.tags[0].name`

Why is the value 'interesting?' Because the second post has many tags and its first tag's value is 'interesting.'

Now assign variables to the first and second tags:

`first_tag = Tag.first`

`second_tag = Tag.second`

Look at the tag.rb file in the app/models folder. A tag has_many posts. That means we can find posts associated with this tag.

Try this in the console:

`first_tag.posts`

What does it return? A collection of posts.

`first_tag.posts.first `

What does it return? The first post record associated with this tag (may or may not be the first post in the database).

`first_tag.posts.first.body`

What does it return? The value of the body field of that tag's post.

Now let's try to find the collection of tags records that has the name value equal to 'boring':

`boring_tag = Tag.where(name: 'boring')`

And find all posts that are 'boring.'

Since boring_tags is a collection (because of '.where', we have to use the first tag when we are calling posts.

`boring_tag.first.posts`

Write this in the console on 3 separate lines:

```ruby
boring_tag.first.posts.each do |post|

   p post.body

end
```

This should print the value of the body tag of each post in the collection (there is only one in this case).

Contrast this to:

`third_tag = Tag.find(3)`

This will not return a collection. This returns one record (the record with the id of 3).

Now we can write:

`third_tag.posts`

This will return all posts that are associated with this tag.

Try more ActiveRecord queries. Don't forget that you can use 'where' to find records.

Try this:

`old_posts = Post.where("created_at > ?", 1.hour.ago)`

Keep experimenting!



