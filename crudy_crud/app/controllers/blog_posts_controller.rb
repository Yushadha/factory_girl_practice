class BlogPostsController < ActionController::Base
	protect_from_forgery with: :exception

	def index
		render text: "<h1>All Posts</h1>"
	end

	def new
		@blog_posts = BlogPost.new
	end

	def create
		@blog_post = BlogPost.new
		@blog_post.title = params[:blog_post][:title]
		@blog_post.body = params[:blog_post][:title] 
		@blog_post.author = params[:blog_post][:author]
		@blog_post.save
	end
end