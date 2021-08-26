class MedicalUse < ActiveRecord::Base
    has_many :medical_use_strains, dependent: :destroy
    has_many :strains, through: :medical_use_strains
end