class EntersController < ApplicationController
  before_action :set_enter, only: [:show, :edit, :update, :destroy]


  # GET /tests
  # GET /tests.json
  def index
    @enters = Enroll.all


  end

  # GET /tests/1
  # GET /tests/1.json
  def show

  end

  # GET /tests/new
  def new
    @enter = Enroll.new
  end

  # GET /tests/1/edit
  def edit
  end

  # POST /tests
  # POST /tests.json
  def create
    @enter = Enroll.new(enter_params)
    respond_to do |format|
      if @enter.save
        format.html { redirect_to promotions_path, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @promotion }
      end
    end
  end



  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @enter.update(enter_params)
        format.html { redirect_to @enter, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @enter }
      else
        format.html { render :edit }
        format.json { render json: @enter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @enter.destroy
    respond_to do |format|
      format.html { redirect_to enters_path, notice: 'Test was successfully destroyed.' }
      format.json { head :no_enter }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_enter
    @enter = Enroll.find(params[:id])

  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def enter_params
    params.require(:enroll).permit(:promotion_id, :name,:tel, :content)
  end
end