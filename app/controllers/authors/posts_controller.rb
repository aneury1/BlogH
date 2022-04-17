module Authors

class PostsController < AuthorsController
  before_action :set_post, only: %i[ edit update destroy ]

  # GET /posts or /posts.json
  def index
    @posts = current_author.posts.all
  end

  def new
    @post = current_author.posts.build
  end

  def edit
    @paragraph = @post.elements.build(element_type:'paragraph')
  end

  def create
    @post =current_author.posts.build(post_params)
    if @post.save
       redirect_to @post, notice: "Post created"
    else
       render :new
    end
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    
    if @post.update(post_params)
      redirect_to @post, notice: "Post update!!"
    else
      render :edit
    end 
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @post.destroy
    redirect_to post_url, notice: "Post delete"
  end

  private

    def set_post
      @post = current_author.posts.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :description)
    end
end
end