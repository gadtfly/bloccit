class CommentsController < ApplicationController



  def create
    # @topic = Topic.find(params[:topic_id])
    # @post = Post.find(params[:post_id])
    @post = Post.find(params[:post_id])
    @topic = @post.topic
    @comments = @post.comments
    @comment = current_user.comments.build(comment_params)
    @comment.post = @post
    authorize @comment
   
    if @comment.save
      flash[:notice] = "Comment was saved."
      redirect_to [@topic, @post]
    else
      flash[:error] = "There was an error saving the post. Please try again."
      render'posts/show'
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @topic = @post.topic
    @comment = Comment.find(params[:id])
    authorize @comment

    if @comment.destroy
      flash[:notice] = "Comment was successfully deleted"
      redirect_to [@topic, @post]
    else
      flash[:error] = "There was an error deleting the comment."
      redirect_to [@topic, @post]
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end