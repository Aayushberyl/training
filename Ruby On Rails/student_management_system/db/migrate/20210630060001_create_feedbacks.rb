class CreateFeedbacks < ActiveRecord::Migration[6.1]
  def change
    create_table :feedbacks do |t|
      t.string  :content
      t.references :comments, polymorphic: true
      t.timestamps
    end
  end
end
