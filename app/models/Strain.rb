class Strain < ActiveRecord::Base
    has_many :medical_use_strains, dependent: :destroy
    has_many :medical_uses, through: :medical_use_strains
end