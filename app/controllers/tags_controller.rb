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

  def edit
    @post = Post.find(params[:post_id])
    @tag = Tag.find(params[:id])
  end

  def update
    @tag = Tag.find(params[:id])
    if @tag.update(tag_params)
      redirect_to post_path(params[:post_id])
    else
      render :edit
    end
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to post_path(params[:post_id])
  end

  private
  def tag_params
    params.require(:tag).permit(:description)
  end
end
