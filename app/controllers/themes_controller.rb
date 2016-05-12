class ThemesController < ApplicationController
  before_action :set_admintheme, only: [:show, :edit, :update, :destroy]
  def index



  end





  def show
  end

  # GET /tests/new
  def new
    @admintheme = Theme.new
  end

  # GET /tests/1/edit
  def edit
  end



  # POST /tests
  # POST /tests.json
  def create
    @admintheme = Theme.new(admintheme_params)

    respond_to do |format|
      if @admintheme.save
        format.html { redirect_to adminthemes_path, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @admintheme }
      else
        format.html { render :new }
        format.json { render json: @admintheme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @theme.update(adminthemes_params)
        format.html { redirect_to @admintheme, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @admintheme }
      else
        format.html { render :edit }
        format.json { render json: @admintheme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @theme.destroy
    respond_to do |format|
      format.html { redirect_to adminthemes_url, notice: 'Admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end





  private
  # Use callbacks to share common setup or constraints between actions.
  def set_admintheme
    @admintheme = Theme.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def admintheme_params
    params.require(:theme).permit(:themecla_id,:title,:img)
  end
end

