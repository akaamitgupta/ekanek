class AddCodeToDocuments < ActiveRecord::Migration[6.0]
  def change
    add_column :documents, :code, :string
    add_index :documents, :code
  end
end
