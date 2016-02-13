module V1
  class FacesController < ApplicationController
    def index
      @faces = Face.all
    end
  end
end
