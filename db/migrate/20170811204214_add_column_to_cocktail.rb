class AddColumnToCocktail < ActiveRecord::Migration[5.1]
  def change
    add_column :cocktails, :photo_url, :string
  end
end
