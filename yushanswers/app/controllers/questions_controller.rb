class QuestionsController < ApplicationController
	before_action :find_question, only: [:show, :edit, :update, :destroy]

	def index
		@question = Question.all
	end

	def new
		@question = Question.new
	end

	def create
		question_params = params.require(:question).permit([:title, :body])
		   @question = Question.new question_params
		if @question.save
			# redirect_to question_path(@question.id)
			redirect_to @question
		else


		#Show the form again with error
		render :new
		end
		

	end

	def show
	 @question = Question.find params[:id]
	 #render text: params
	 #@question.view_count += 1
	 @question.increment!(:view_count)
	 @question.save
	end

	def edit
		@question = Question.find params[:id]
	end

	def update
		@question = Question.find params[:id]
		question_params = params.require(:question).permit(:title, :body)
		if @question.update question_params
			redirect_to @question
		else
		render :edit
		end
	end

	def delete
		question = Question.find params[:id]
		question.destroy
		redirect_to questions_path
	end

private

	def find_question
		@question = Question.find params[:id]
	end

	def question_params
		params.require(:question).permit(:title, :body)
	end

end