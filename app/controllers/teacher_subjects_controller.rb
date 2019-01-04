class TeacherSubjectsController < ApplicationController
  before_action :set_teacher_subject, only: [:show, :edit, :update, :destroy]

  # GET /teacher_subjects
  # GET /teacher_subjects.json
  def index
    @teacher_subjects = TeacherSubject.all
  end

  # GET /teacher_subjects/1
  # GET /teacher_subjects/1.json
  def show
  end

  # GET /teacher_subjects/new
  def new
    @teacher_subject = TeacherSubject.new
  end

  # GET /teacher_subjects/1/edit
  def edit
  end

  # POST /teacher_subjects
  # POST /teacher_subjects.json
  def create
    @teacher_subject = TeacherSubject.new(teacher_subject_params)

    respond_to do |format|
      if @teacher_subject.save
        format.html { redirect_to @teacher_subject, notice: 'Teacher subject was successfully created.' }
        format.json { render :show, status: :created, location: @teacher_subject }
      else
        format.html { render :new }
        format.json { render json: @teacher_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teacher_subjects/1
  # PATCH/PUT /teacher_subjects/1.json
  def update
    respond_to do |format|
      if @teacher_subject.update(teacher_subject_params)
        format.html { redirect_to @teacher_subject, notice: 'Teacher subject was successfully updated.' }
        format.json { render :show, status: :ok, location: @teacher_subject }
      else
        format.html { render :edit }
        format.json { render json: @teacher_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teacher_subjects/1
  # DELETE /teacher_subjects/1.json
  def destroy
    @teacher_subject.destroy
    respond_to do |format|
      format.html { redirect_to teacher_subjects_url, notice: 'Teacher subject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher_subject
      @teacher_subject = TeacherSubject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teacher_subject_params
      params.require(:teacher_subject).permit(:TeacherAccount, :IdSubject)
    end
end
