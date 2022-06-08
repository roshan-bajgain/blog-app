class LikesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    new_like = current_user.likes.new(
      author: current_user,
      post: @post
    )
    if new_like.save
      redirect_to "/users/#{@post.author_id}/posts/#{@post.id}", notice: 'Success!'
    else
      redirect_to "/users/#{@post.author_id}/posts/#{@post.id}", alert: 'Error occured!'
    end
  end
end
