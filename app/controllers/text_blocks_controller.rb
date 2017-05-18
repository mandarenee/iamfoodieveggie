class TextBlocksController < ApplicationController
	# GET /text_blocks
  # GET /text_blocks.json
  def index
    @article = Article.find(params[:article_id])
    @text_blocks = @article.text_blocks
  end

  # GET /text_blocks/1
  # GET /text_blocks/1.json
  def show
  end

  # GET /text_blocks/new
  def new
    @text_block = TextBlock.new
  end

  # GET /text_blocks/1/edit
  def edit
    @post = post_params
    @text_block = set_text_block
  end

  # POST /text_blocks
  # POST /text_blocks.json
  def create
    @text_block = TextBlock.new(text_block_params)

    if @text_block.save
			redirect_to find_redirect(post_params), notice: 'text_block was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /text_blocks/1
  # PATCH/PUT /text_blocks/1.json
  def update
    @text_block = set_text_block
    post = post_params
    if @text_block.update(text_block_params)
      redirect_to find_redirect(post_params), notice: 'Text block was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /text_blocks/1
  # DELETE /text_blocks/1.json
  def destroy
    @post = post_params
    @text_block = set_text_block
    @text_block.destroy
    redirect_to find_redirect(@post), notice: 'Text block was successfully destroyed.'
  end

  private

  def set_text_block
    TextBlock.find(params[:id])
  end

  def post_params
    if params[:article_id]
      Article.find(params[:article_id])
    elsif params[:recipe_id]
      Recipe.find(params[:recipe_id])
    end
  end

  def find_redirect(post)
    if post.is_a?(Article)
      article_path(post.id)
    else
      recipe_path(post.id)
    end
  end

  def text_block_params
    params.require(:text_block).permit(:body, :photo, :recipe_id, :article_id)
  end
end