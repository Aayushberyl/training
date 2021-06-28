class ModifydatatypeToStudents < ActiveRecord::Migration[6.1]
  def change
    change_column :students , :contact , :bigint
  end
end
