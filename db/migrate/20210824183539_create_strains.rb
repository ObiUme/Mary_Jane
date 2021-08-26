class CreateStrains < ActiveRecord::Migration[6.1]
  def change
    create_table :strains do |t|
      t.string :strain
      t.string :buzzword
      t.string :cannabinoid
      t.string :health_benefit

    end
  end
end
