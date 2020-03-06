class InstitutionController < ApplicationController
    def show
        @institution = Institution.find(params[:id])
        @demo = @institution.student_demographic_profile
    end

    def index
        @institutions = Institution.paginate(page: params[:page], per_page: 50)
    end
end
