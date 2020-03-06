class InstitutionController < ApplicationController
    def show
        @institution = Institution.find(params[:id])
        @demo = @institution.student_demographic_profile
    end

    def index
        @institution = Institution.all
    end
end