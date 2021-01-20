class ProblemSerializer 
  include FastJsonapi::ObjectSerializer
  attributes :id, :level, :prompt, :board_size, :board, :answer, :move, :player, :attempts, :solved, :user_made
end
