# Post.create(title:"The Lion King", body: "Superman", author: "Henry Chew")

# Post.create(title:"Jurassic Park", body: "Ultraman", author: "Jaesy")

# Post.create(title:"Alice in the Wonderland", body: "Power Rangers", author: "Wen Yu")

# Tag.create(name: "Movies")

# Posts_tags.create(post_id:"", tag_id:"")

# Post.all.each do |p|
#   Tag.first << p
# end

# Seed many-to-many tables
#method 1
# tag = Tag.create(name: "Movies")
# post = Post.create(title:"The Lion King2", body: "Superman2", author: "Henry Chew2")
# post.tags << tag

#method 2
tag = Tag.create(name: "Fashion")
post = Post.create(title:"Summer 2015", body: "SexyLady", author: "Jaesy")
tag.posts << post

#method 3
=begin
post = Post.create(title:"The Lion King2", body: "Superman2", author: "Henry Chew2")
post.tags.find_or_create_by(name: "Fashion")
post.tags.create(name: "Fashion")
=end

# post.tags.find_or_create_by(name: "Fashion")

# post.tags << Tag.find_or_create_by(name: "Fashion")