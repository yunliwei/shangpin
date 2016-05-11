class ThemeclasController < ApplicationController
  before_action :set_themecla, only: [:show, :edit, :update, :destroy]

  def index
    @themecla = Themecla.all
  end





  def show
  end

  # GET /tests/new
  def new
    @themecla = Themecla.new
  end

  # GET /tests/1/edit
  def edit
  end



  # POST /tests
  # POST /tests.json
  def create
    @themecla = Themecla.new(themecla_params)
    respond_to do |format|
      if @themecla.save
        format.html { redirect_to themeclas_path, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @themecla}
      else
        format.html { render :new }
        format.json { render json: @themecla.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @themecla.update(themeclas_params)
        format.html { redirect_to themeclas_path, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @themecla }
      else
        format.html { render :edit }
        format.json { render json: @themecla.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @themecla.destroy
    respond_to do |format|
      format.html { redirect_to themeclas_path, notice: '记录已经删除!' }
      format.json { head :no_content }
    end
  end





  private
  # Use callbacks to share common setup or constraints between actions.
  def set_themecla
    @themecla = Themecla.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def themecla_params
    params.require(:themecla).permit(:name)
  end
end




