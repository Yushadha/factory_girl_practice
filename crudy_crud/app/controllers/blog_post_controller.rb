class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	def index
		render text: <h1>"All Posts"</h1>
	end

end