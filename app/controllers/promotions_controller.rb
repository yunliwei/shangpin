class PromotionsController < ApplicationController
  before_action :set_promotion, only: [:show, :edit, :update, :destroy]
  def index

    @promotions = Promotion.all
    @enroll = Enroll.new

    if params[:id].to_i > 0

      @content = Promotion.find(params[:id])

    else
      @content = nil

    end

  end

  # GET /tests/1
  # GET /tests/1.json
  def show

  end

  # GET /tests/new
  def new
    @adminpromotion = Promotion.new

  end

  # GET /tests/1/edit
  def edit

  end

  # POST /tests
  # POST /tests.json
  def create



    @promotion = Promotion.new(promotion_params)
    respond_to do |format|
      if @promotion.save
        format.html { redirect_to adminpromotions_path, notice: 'Test was successfully created.' }
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
      if @adminpromotion.update(promotion_params)
        format.html { redirect_to adminpromotions_path, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @adminpromotion }
      else
        format.html { render :edit }
        format.json { render json: @adminpromotion.errors, status: :unprocessable_entity }
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
  def set_promotion
    if params[:id].to_i >0
      @adminpromotion = Promotion.find(params[:id])
    end
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def promotion_params
    params.require(:promotion).permit( :title,:content,:startdate,:enddate,:showdate)
  end
end
