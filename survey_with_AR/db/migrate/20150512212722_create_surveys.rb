class CreateSurveys < ActiveRecord::Migration
  def change
    create_table(:surveys) do |t|
      t.column(:description, :string)

      t.timestamps()
    end
  end
end
