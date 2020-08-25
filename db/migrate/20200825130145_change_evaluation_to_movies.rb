class ChangeEvaluationToMovies < ActiveRecord::Migration[5.2]
  def change
    change_column_default :movies, :evaluation, 0.0
  end
end
