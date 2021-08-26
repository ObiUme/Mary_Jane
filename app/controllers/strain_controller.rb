class StrainController < ApplicationController
    
    get "/strains" do
        Strain.all.to_json
    end

    post "/strains" do
        Strain.create(strain_params).to_json
    end

    get "/strains/:id" do
        strain = Strain.find(params[:id])
        strain.to_json
    end

    delete "/strains/:id" do 
        strain = Strain.find(params[:id])
        strain.destroy
        strain.to_json
    end

    patch '/strains/:id' do 
        strain = Strain.find(params[:id])
        strain.update(
            strain: params[:strain],
            buzzword: params[:buzzword],
            cannabinoid: params[:cannabinoid],
            health_benefit: params[:health_benefit]
        )
        strain.to_json
    end


    private 

    def strain_params
        allowed_params = %w(strain buzzword cannabinoid health_benefit image_url)
        params.select {|param, value| allowed_params.include?(param)}
    end
end