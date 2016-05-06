class AboutsController < ApplicationController
  before_action :set_about, only: [:show, :edit, :update, :destroy]


  def index

    @about = About.first

    if @about
      redirect_to  @about
    else
      About.create(content:'about as')
      @about = About.first
      redirect_to  @about
    end

  end





  private
  # Use callbacks to share common setup or constraints between actions.
  def set_about
    @about = About.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def about_params
    params.require(:about).permit(:content)
  end

end
