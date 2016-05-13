class AdminthemesController < ApplicationController
  before_action :set_theme, only: [:show, :edit, :update, :destroy]
  def index

    @themes = Theme.all
    @themeclas = Themecla.all

  end





  def show
    @themetype = Themecla.all
  end

  # GET /tests/new
  def new
    @admintheme = Theme.new
    @themetype = Themecla.all

  end

  # GET /tests/1/edit
  def edit
    @themetype = Themecla.all

  end



  # POST /tests
  # POST /tests.json
  def create
    @admintheme= Theme.new(theme_params)

    respond_to do |format|
      if @admintheme.save
        format.html { redirect_to themes_path, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @theme}
      else
        format.html { render :new }
        format.json { render json: @theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @theme.update(caipinq_params)
        format.html { redirect_to @theme, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @theme }
      else
        format.html { render :edit }
        format.json { render json: @theme.errors, status: :unprocessable_entity }
      end
    end

  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @admintheme.destroy
    respond_to do |format|
      format.html { redirect_to adminthemes_path, notice: '记录已经删除!' }
      format.json { head :no_content }
    end
  end





  private
  # Use callbacks to share common setup or constraints between actions.
  def set_theme
    @admintheme = Theme.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def theme_params
    params.require(:theme).permit(:themecla_id,:title,:themeimg)
  end
end
