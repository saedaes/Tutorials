class ChangeBeginHourTypeInSchedules < ActiveRecord::Migration[5.2]
  def change
  	change_column :schedules, :BeginHour, :time
  end
end
