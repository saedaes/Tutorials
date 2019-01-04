class TutorialDatesController < ApplicationController
  before_action :set_tutorial_date, only: [:show, :edit, :update, :destroy]

  # GET /tutorial_dates
  # GET /tutorial_dates.json
  def index
    @tutorial_dates = TutorialDate.all
  end

  # GET /tutorial_dates/1
  # GET /tutorial_dates/1.json
  def show
  end

  # GET /tutorial_dates/new
  def new
    @tutorial_date = TutorialDate.new
  end

  # GET /tutorial_dates/1/edit
  def edit
  end

  # POST /tutorial_dates
  # POST /tutorial_dates.json
  def create
    @tutorial_date = TutorialDate.new(tutorial_date_params)

    respond_to do |format|
      if @tutorial_date.save
        format.html { redirect_to @tutorial_date, notice: 'Tutorial date was successfully created.' }
        format.json { render :show, status: :created, location: @tutorial_date }
      else
        format.html { render :new }
        format.json { render json: @tutorial_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tutorial_dates/1
  # PATCH/PUT /tutorial_dates/1.json
  def update
    respond_to do |format|
      if @tutorial_date.update(tutorial_date_params)
        format.html { redirect_to @tutorial_date, notice: 'Tutorial date was successfully updated.' }
        format.json { render :show, status: :ok, location: @tutorial_date }
      else
        format.html { render :edit }
        format.json { render json: @tutorial_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tutorial_dates/1
  # DELETE /tutorial_dates/1.json
  def destroy
    @tutorial_date.destroy
    respond_to do |format|
      format.html { redirect_to tutorial_dates_url, notice: 'Tutorial date was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tutorial_date
      @tutorial_date = TutorialDate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tutorial_date_params
      params.require(:tutorial_date).permit(:StudentRegister, :IdShedule, :Date, :Topic)
    end
end