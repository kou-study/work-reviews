class PostsController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    @movie = Movie.find(params[:movie_id])
    @post = current_user.posting(@movie, post_params[:content], post_params[:evaluation])
    
    if @post.save
      flash[:success] = 'レビューを投稿しました'
      redirect_to movie_url(@movie)
    else
      flash.now[:danger] = 'レビューの投稿に失敗しました'
      redirect_to posts_url(@movie)
    end
  end

  def destroy
    @movie = Movie.find(params[:movie_id])
    current_user.delete_post(@movie)
    flash[:success] = '投稿を削除しました'
    redirect_to movie_url(@movie)
  end
  
  private
  def post_params
    params.require(:post).permit(:content, :evaluation)
  end

end
