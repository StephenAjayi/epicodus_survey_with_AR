class RemoveDiscriptionFromSurveys < ActiveRecord::Migration
  def change
    remove_column(:surveys, :description)
  end
end
