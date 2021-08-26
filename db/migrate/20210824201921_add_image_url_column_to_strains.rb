class AddImageUrlColumnToStrains < ActiveRecord::Migration[6.1]
  def change
    add_column :strains, :image_url, :string
  end
end
