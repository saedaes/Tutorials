class AddTeacherCommentToTutorialDates < ActiveRecord::Migration[5.2]
  def change
  	add_column :tutorial_dates, :TeacherComment, :text
  end
end
