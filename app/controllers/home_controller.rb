class HomeController < ApplicationController
  def index
  	@post = Post.new
  	@posts = Post.all.order(created_at: :desc)
  end


  def create_post_remote
      @post = current_user.posts.create(post_params)
  		respond_to do |format|
      format.js{
          
      }
    end
  end

  def post_params
    params.require(:post).permit(:content , :image)
  end


  def like

    @post_id = params[:post_id]

    like = current_user.likes.where(post_id: @post_id).first

    if like
      like.destroy
    else
      current_user.likes.create(post_id: @post_id)
    end
    
  end

  def comment_remote
    @post = Post.find(params[:post_id])
    @comments = @post.comments.all.order(created_at: :desc)
    respond_to do |format|               
    format.js
  end  
  end

  def create_comment_remote

    puts params[:text_field]
    @comment = current_user.comments.create(post_id: params[:post_id] , content: params[:content])
    @post_id = params[:post_id]
     respond_to do |format|               
    format.js
  end  

  end

end
