class IntroductionsController < ApplicationController

  before_action :set_introduction, only: [:show, :edit, :update, :destroy]


  def index

    @introduction = Introduction.first

    if @introduction
      redirect_to  @introduction
    else
      Introduction.create(content:'introduction')
      @introduction = Introduction.first
      redirect_to  @introduction
    end

  end

  def show

  end

  def edit

  end

  def create
    @introduction = Introduction.new(introduction_params)

    respond_to do |format|
      if @introduction.save
        format.html { redirect_to edit_introduction_path @introduction, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @test }
      else
        format.html { render :new }
        format.json { render json: @test.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @introduction.update(introduction_params)
        format.html { redirect_to edit_introduction_path(@introduction), notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @test }
      else
        format.html { render :edit }
        format.json { render json: @test.errors, status: :unprocessable_entity }
      end
    end
  end





  private
  # Use callbacks to share common setup or constraints between actions.
  def set_introduction
    @introduction = Introduction.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def introduction_params
    params.require(:introduction).permit(:content)
  end

end
