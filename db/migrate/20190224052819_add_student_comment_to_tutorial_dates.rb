class AddStudentCommentToTutorialDates < ActiveRecord::Migration[5.2]
  def change
  	add_column :tutorial_dates, :StudentComment, :text
  end
end
