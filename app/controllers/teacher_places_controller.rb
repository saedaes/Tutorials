class TeacherPlacesController < ApplicationController
  before_action :set_teacher_place, only: [:show, :edit, :update, :destroy]

  # GET /teacher_places
  # GET /teacher_places.json
  def index
    @teacher_places = TeacherPlace.all
  end

  # GET /teacher_places/1
  # GET /teacher_places/1.json
  def show
  end

  # GET /teacher_places/new
  def new
    @teacher_place = TeacherPlace.new
  end

  # GET /teacher_places/1/edit
  def edit
  end

  # POST /teacher_places
  # POST /teacher_places.json
  def create
    @teacher_place = TeacherPlace.new(teacher_place_params)

    respond_to do |format|
      if @teacher_place.save
        format.html { redirect_to @teacher_place, notice: 'Teacher place was successfully created.' }
        format.json { render :show, status: :created, location: @teacher_place }
      else
        format.html { render :new }
        format.json { render json: @teacher_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teacher_places/1
  # PATCH/PUT /teacher_places/1.json
  def update
    respond_to do |format|
      if @teacher_place.update(teacher_place_params)
        format.html { redirect_to @teacher_place, notice: 'Teacher place was successfully updated.' }
        format.json { render :show, status: :ok, location: @teacher_place }
      else
        format.html { render :edit }
        format.json { render json: @teacher_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teacher_places/1
  # DELETE /teacher_places/1.json
  def destroy
    @teacher_place.destroy
    respond_to do |format|
      format.html { redirect_to teacher_places_url, notice: 'Teacher place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher_place
      @teacher_place = TeacherPlace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teacher_place_params
      params.require(:teacher_place).permit(:teacher_id, :place_id)
    end
end
