class ArticlesController < ApplicationController
  before_action :set_article, only: %i[ show edit update destroy ]
before_action :authenticate_user!
  def
  # GET /articles or /articles.json
  def index
    @articles = Article.all
  end

  # GET /articles/1 or /articles/1.json
  def show
  end

  # GET /articles/new
  def new
    @articles = current_user.articles.build
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles or /articles.json
  def create
    @articles = current_user.articles.build(article_params)

    respond_to do |format|
      if @articles.save
        format.html { redirect_to article_url(@articles), notice: "Article was successfully created." }
        format.json { render :show, status: :created, location: @articles }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @articles.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1 or /articles/1.json
  def update
    respond_to do |format|
      if @articles.update(article_params)
        format.html { redirect_to article_url(@articles), notice: "Article was successfully updated." }
        format.json { render :show, status: :ok, location: @articles }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @articles.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1 or /articles/1.json
  def destroy
    @articles.destroy

    respond_to do |format|
      format.html { redirect_to articles_url, notice: "Article was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @articles = Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_params
      params.require(:article).permit(:title, :body)
    end
end
