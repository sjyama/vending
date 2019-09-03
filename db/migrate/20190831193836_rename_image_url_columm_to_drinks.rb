class RenameImageUrlColummToDrinks < ActiveRecord::Migration[6.0]
  def change
    rename_column :drinks, :image_url, :image
  end
end
