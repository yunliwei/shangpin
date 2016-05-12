class AdminpromotionsController < ApplicationController
  before_action :set_adminpromotion, only: [:show, :edit, :update, :destroy]
  def index

    @adminpromotions= Promotion.all


  end

  # GET /tests/1
  # GET /tests/1.json
  def show

  end

  # GET /tests/new
  def new
    @adminpromotion =Promotion.new

  end

  # GET /tests/1/edit
  def edit

  end

  # POST /tests
  # POST /tests.json
  def create
    @adminpromotion = Promotion.new(adminpromotion_params)

    respond_to do |format|
      if @adminpromotion.save
        format.html { redirect_to adminpromotion_path(@adminpromotion),notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @adminpromotion }
      else
        format.html { render :new }
        format.json { render json: @adminpromotion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @adminpromotion.update(adminpromotions_paths)
        format.html { redirect_to adminpromotions_path, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @adminpromotion }
      else
        format.html { render :edit }
        format.json { render json: @adminpromotions.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @adminpromotion.destroy
    respond_to do |format|
      format.html { redirect_to adminpromotions_path, notice: 'Test was successfully destroyed.' }
      format.json { head :no_adminpromotion }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_adminpromotion
    @adminpromotion = Promotion.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def adminpromotion_params
    params.require(:promotion).permit( :title,:content,:startdate,:enddate,:showdate)
  end

end


