class CreateMedicalUseStrains < ActiveRecord::Migration[6.1]
  def change
    create_table :medical_use_strains do |t|
      t.belongs_to :medical_use, foreign_key: true
      t.belongs_to :strain, foreign_key: true
    end
  end
end
