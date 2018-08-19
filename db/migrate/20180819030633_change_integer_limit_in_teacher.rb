class ChangeIntegerLimitInTeacher < ActiveRecord::Migration[5.2]
  def change
    
     change_column :teachers, :Cellphone, :integer, limit: 8
  
  end
end
