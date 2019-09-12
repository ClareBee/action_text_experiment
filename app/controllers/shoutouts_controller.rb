class ShoutoutsController < ApplicationController
  def index
    # replace with search?
    @users = User.all

    respond_to do |format|
      format.json
    end
  end
end
