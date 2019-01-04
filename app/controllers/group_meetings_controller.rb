class GroupMeetingsController < ApplicationController
  before_action :set_group_meeting, only: [:show, :edit, :update, :destroy]

  # GET /group_meetings
  # GET /group_meetings.json
  def index
    @group_meetings = GroupMeeting.all
  end

  # GET /group_meetings/1
  # GET /group_meetings/1.json
  def show
  end

  # GET /group_meetings/new
  def new
    @group_meeting = GroupMeeting.new
  end

  # GET /group_meetings/1/edit
  def edit
  end

  # POST /group_meetings
  # POST /group_meetings.json
  def create
    @group_meeting = GroupMeeting.new(group_meeting_params)

    respond_to do |format|
      if @group_meeting.save
        format.html { redirect_to @group_meeting, notice: 'Group meeting was successfully created.' }
        format.json { render :show, status: :created, location: @group_meeting }
      else
        format.html { render :new }
        format.json { render json: @group_meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_meetings/1
  # PATCH/PUT /group_meetings/1.json
  def update
    respond_to do |format|
      if @group_meeting.update(group_meeting_params)
        format.html { redirect_to @group_meeting, notice: 'Group meeting was successfully updated.' }
        format.json { render :show, status: :ok, location: @group_meeting }
      else
        format.html { render :edit }
        format.json { render json: @group_meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_meetings/1
  # DELETE /group_meetings/1.json
  def destroy
    @group_meeting.destroy
    respond_to do |format|
      format.html { redirect_to group_meetings_url, notice: 'Group meeting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_meeting
      @group_meeting = GroupMeeting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_meeting_params
      params.require(:group_meeting).permit(:IdTutorialDate, :ExtraStudentRegistration)
    end
end
