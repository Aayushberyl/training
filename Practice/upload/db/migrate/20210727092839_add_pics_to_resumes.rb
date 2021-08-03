class AddPicsToResumes < ActiveRecord::Migration[6.0]
  def change
    add_column :resumes, :pictures, :json
  end
end
