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
  end

  # POST /text_blocks
  # POST /text_blocks.json
  def create
    @text_block = TextBlock.new(text_block_params)

    if @text_block.save
    	if params[:recipe_id]
				redirect_to recipe_path(params[:recipe_id]), notice: 'text_block was successfully created.'
			elsif params[:article_id]
				redirect_to article_path(params[:article_id]), notice: 'text_block was successfully created.'
			end
    else
      render :new
    end
  end

  # PATCH/PUT /text_blocks/1
  # PATCH/PUT /text_blocks/1.json
  def update
    respond_to do |format|
      if @text_block.update(text_block_params)
        format.html { redirect_to @text_block, notice: 'Text block was successfully updated.' }
        format.json { render :show, status: :ok, location: @text_block }
      else
        format.html { render :edit }
        format.json { render json: @text_block.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /text_blocks/1
  # DELETE /text_blocks/1.json
  def destroy
    @text_block.destroy
    respond_to do |format|
      format.html { redirect_to text_blocks_url, notice: 'Text block was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_text_block
    @text_block = TextBlock.find(params[:id])
  end

  def text_block_params
    params.require(:text_block).permit(:body, :photo, :recipe_id, :article_id)
  end
end