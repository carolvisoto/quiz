class QuestionsController < ApplicationController
	
	def index
	end

	def rand
      quiz_array = Question.pluck(:id)
      quiz_rand = quiz_array.shuffle.sample   
      @quiz = Question.find_by_id(quiz_rand)
      render json: @quiz
	end

end
