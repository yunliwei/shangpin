class AdminaboutsController < ApplicationController

  def index

    @about = About.first

    if @about
      redirect_to edit_about_path @about
    else
      About.create(content:'about as')
      @about = About.first
      redirect_to edit_about_path @about
    end

  end

end
