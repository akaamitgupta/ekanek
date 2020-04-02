class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents do |t|
      t.integer :user_id
      t.string :title
      t.text :description
      t.attachment :document

      t.timestamps
    end
  end
end
