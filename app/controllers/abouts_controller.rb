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

  def show

  end

  def edit

  end

  def create
    @about = About.new(about_params)

    respond_to do |format|
      if @about.save
        format.html { redirect_to edit_about_path @about, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @test }
      else
        format.html { render :new }
        format.json { render json: @test.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @about.update(about_params)
        format.html { redirect_to edit_about_path(@about), notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @test }
      else
        format.html { render :edit }
        format.json { render json: @test.errors, status: :unprocessable_entity }
      end
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
