class CaipinsController < ApplicationController
  before_action :set_admincaipin, only: [:show, :edit, :update, :destroy]
  def index



  end





  def show
  end

  # GET /tests/new
  def new
    @admincaipin = Caipin.new
  end

  # GET /tests/1/edit
  def edit
  end



  # POST /tests
  # POST /tests.json
  def create
    @admincaipin = Caipin.new(admincaipin_params)

    respond_to do |format|
      if @admincaipin.save
        format.html { redirect_to admincaipins_path, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @admincaipin }
      else
        format.html { render :new }
        format.json { render json: @admincaipin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @caipin.update(admincaipins_params)
        format.html { redirect_to @admincaipin, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @admincaipin }
      else
        format.html { render :edit }
        format.json { render json: @admincaipin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @caipin.destroy
    respond_to do |format|
      format.html { redirect_to admincaipins_url, notice: 'Admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end





  private
  # Use callbacks to share common setup or constraints between actions.
  def set_admincaipin
    @admincaipin = Caipin.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def admincaipin_params
    params.require(:caipin).permit(:productcla_id,:name,:summary, :price)
  end
end


