class AdmincaipinsController < ApplicationController
  before_action :set_caipin, only: [:show, :edit, :update, :destroy]
  def index

    @caipins = Caipin.all
    @caipinclas = Caipincla.all

  end





  def show
  end

  # GET /tests/new
  def new
    @admincaipin = Caipin.new
    @caipintype = Caipincla.all
  end

  # GET /tests/1/edit
  def edit


  end



  # POST /tests
  # POST /tests.json
  def create
    @admincaipin = Caipin.new(caipin_params)

    respond_to do |format|
      if @admincaipin.save
        format.html { redirect_to caipins_path, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @caipin }
      else
        format.html { render :new }
        format.json { render json: @caipin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @caipin.update(caipin_params)
        format.html { redirect_to @caipin, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @caipin }
      else
        format.html { render :edit }
        format.json { render json: @caipin.errors, status: :unprocessable_entity }
      end
    end

  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @admincaipin.destroy
    respond_to do |format|
      format.html { redirect_to admincaipins_path, notice: '记录已经删除!' }
      format.json { head :no_content }
    end
  end





  private
  # Use callbacks to share common setup or constraints between actions.
  def set_caipin
    @admincaipin = Caipin.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def caipin_params
    params.require(:caipin).permit(:caipincla_id,:name,:summary,:price)
  end
end
