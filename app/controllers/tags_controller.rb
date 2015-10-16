class TagsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @tag = @post.tags.new
  end

  def create
    @post = Post.find(params[:post_id])
    @tag = @post.tags.new(tag_params)
    @post.tags.push(@tag)
    if @tag.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  private
  def tag_params
    params.require(:tag).permit(:description)
  end
end
