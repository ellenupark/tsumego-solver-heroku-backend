class ProblemsController < ApplicationController
  def index
      problems = Problem.all
      render json: ProblemSerializer.new(problems)
  end

  def show
      problem = Problem.find_by_id(params[:id])
      render json: ProblemSerializer.new(problem)
  end

  def create
      problem = Problem.new(problem_params)
  
      if problem.save
        render json: ProblemSerializer.new(problem)
      else
          render json: {errors: problem.errors.full_messages.to_sentence}
      end
  end
  
  def update
      problem = Problem.find_by_id(params[:id])

      if problem.update(problem_params)
          render json: ProblemSerializer.new(problem)
      else
          render json: {errors: problem.errors.full_messages.to_sentence}
      end
  end

  
  private

    def problem_params
      params.require(:problem).permit(:board_size, :level, :prompt, :user_made, :board, :answer, :move, :player, :attempts, :solved)
    end
end
