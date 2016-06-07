class EnrollsController < ApplicationController
  before_action :set_enroll, only: [:show, :edit, :update, :destroy]


  # GET /tests
  # GET /tests.json
  def index
    @enrolls = Enroll.all
    @enroll = Enroll.new
  end

  # GET /tests/1
  # GET /tests/1.json
  def show

  end

  # GET /tests/new
  def new
    @enroll = Enroll.new
  end

  # GET /tests/1/edit
  def edit
  end

  # POST /tests
  # POST /tests.json
  def create

    @enroll = Enroll.new(enroll_params)

    respond_to do |format|

      if @enroll.save

        format.html { redirect_to promotions_path, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @promotion }

      end
    end
  end



  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @enroll.update(enroll_params)
        format.html { redirect_to @enroll, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @enroll }
      else
        format.html { render :edit }
        format.json { render json: @enroll.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @enroll.destroy
    respond_to do |format|
      format.html { redirect_to enrolls_path, notice: 'Test was successfully destroyed.' }
      format.json { head :no_enroll }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_enroll
    @enroll = Enroll.find(params[:id])

  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def enroll_params
    params.require(:enroll).permit(:promotion_id, :name,:tel, :content)
  end

end
