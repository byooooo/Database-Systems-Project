class SearchController < ApplicationController
  def index
    @institution = Institution.where("name Like ?", "%#{params[:query]}%")
  end
end
