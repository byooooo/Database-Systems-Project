class InstitutionController < ApplicationController
    def show
        @institution = Institution.find(params[:id])
        @costProfile = CostAndFinancialAidProfile.find_by_institution_id(@institution.id)
    end

    def index
        @institution = Institution.all
    end
end