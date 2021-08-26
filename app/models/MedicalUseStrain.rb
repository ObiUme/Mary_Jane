class MedicalUseStrain < ActiveRecord::Base
    belongs_to :medical_use
    belongs_to :strain
end