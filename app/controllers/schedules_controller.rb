class SchedulesController < ApplicationController
  before_action :set_schedule, only: [:show, :edit, :update, :destroy]

  # GET /schedules
  # GET /schedules.json
  def index
    @schedules = Schedule.all
  end

  # GET /schedules/1
  # GET /schedules/1.json
  def show
  end

  # GET /schedules/new
  def new
    @schedule = Schedule.new
    @days = Hash.new
    @days["Lunes"] = 1
    @days["Martes"] = 2
    @days["Miercoles"] = 3
    @days["Jueves"] = 4
    @days["Viernes"] = 5
    @days["Sabado"] = 6
  end

  # GET /schedules/1/edit
  def edit
    @schedule = Schedule.new
    @days = Hash.new
    @days["Lunes"] = 1
    @days["Martes"] = 2
    @days["Miercoles"] = 3
    @days["Jueves"] = 4
    @days["Viernes"] = 5
    @days["Sabado"] = 6
  end

  # POST /schedules
  # POST /schedules.json
  def create
    @schedule = Schedule.new(schedule_params)

    respond_to do |format|
      if @schedule.save
        format.html { redirect_to @schedule, notice: 'Schedule was successfully created.' }
        format.json { render :show, status: :created, location: @schedule }
      else
        format.html { render :new }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schedules/1
  # PATCH/PUT /schedules/1.json
  def update
    respond_to do |format|
      if @schedule.update(schedule_params)
        format.html { redirect_to @schedule, notice: 'Schedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @schedule }
      else
        format.html { render :edit }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedules/1
  # DELETE /schedules/1.json
  def destroy
    @schedule.destroy
    respond_to do |format|
      format.html { redirect_to schedules_url, notice: 'Schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def consult_by_teacher
    @teacher = params[:TeacherAccount]
    @schedule = Schedule.select('"schedules"."id", "schedules"."IdSubject", "subjects"."Name" AS subject_name, "places"."Name" AS place_name, "schedules","BeginHour", "schedules"."EndHour"').joins('INNER JOIN "subjects" ON "schedules"."IdSubject" = "subjects"."id" INNER JOIN "places" ON "schedules"."IdPlace" = "places"."id"').where(:TeacherAccount => @teacher)
    render :json => custom_json_for(@schedule)
  end

  def select
    @schedules = Schedule.all
    render :layout => false
  end

  # GET /schedules/1
  # GET /schedules/1.json
  def single
    @schedule = Schedule.find(params[:id])
    render :layout => false
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule
      @schedule = Schedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schedule_params
      params.require(:schedule).permit(:IdSubject, :TeacherAccount, :IdPlace, :Day, :BeginHour, :EndHour)
    end
end
