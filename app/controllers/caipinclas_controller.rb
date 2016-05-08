class CaipinclasController < ApplicationController
  before_action :set_caipincla, only: [:show, :edit, :update, :destroy]
  def index
   @caipincla = Caipincla.all
  end





  def show
  end

  # GET /tests/new
  def new
    @caipincla = Caipincla.new
  end

  # GET /tests/1/edit
  def edit
  end



  # POST /tests
  # POST /tests.json
  def create
    @caipincla = Caipincla.new(caipincla_params)
    respond_to do |format|
      if @caipincla.save
        format.html { redirect_to caipinclas_path, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @caipincla}
      else
        format.html { render :new }
        format.json { render json: @caipincla.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @caipincla.update(caipinclas_params)
        format.html { redirect_to caipinclas_path, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @caipincla }
      else
        format.html { render :edit }
        format.json { render json: @caipincla.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @caipincla.destroy
    respond_to do |format|
      format.html { redirect_to caipinclas_path, notice: '记录已经删除!' }
      format.json { head :no_content }
    end
  end





  private
  # Use callbacks to share common setup or constraints between actions.
  def set_caipincla
    @caipincla = Caipincla.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def caipincla_params
    params.require(:caipincla).permit(:name)
  end
end


