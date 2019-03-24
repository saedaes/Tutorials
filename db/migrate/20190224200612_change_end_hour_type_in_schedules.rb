class ChangeEndHourTypeInSchedules < ActiveRecord::Migration[5.2]
  def change
  	change_column :schedules, :EndHour, :time
  end
end
