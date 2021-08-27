class MedicalUseController < ApplicationController
    get "/medical_use" do
        medical_uses = MedicalUse.all 
        medical_uses.to_json(:include => :strains)
    end
    
end