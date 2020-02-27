class InstitutionController < ApplicationController
    def show
        @institution = Institution.find(params[:unitid])
    end

    def index
        @institution = Institution.all
    end
end