class AddCatchphraseToCharacters < ActiveRecord::Migration[6.1]
  def change
    # Your code here
    #table name, column name, data type
    add_column :characters, :catchphrase, :string
  end
end
