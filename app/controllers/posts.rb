get '/posts' do
  @posts = Post.all
  erb :posts
end

get '/posts/new' do

end

post '/posts' do
  tag = Tag.new(params[:tag])
  @post = Post.new(params[:post])
  if tag.save
    if @post.save
      @post.tags << tag
      byebug
      redirect to "/posts/#{@post.id}"
    else
      @error = "Invalid input"
    end
  else
    @error = "Invalid input"
  end
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  erb :submited
end

get '/posts/:id/edit' do
end


