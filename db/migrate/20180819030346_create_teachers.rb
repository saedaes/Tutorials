class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :TeacherUser
      t.integer :EmployeeNumber
      t.string :Name
      t.string :LastName
      t.string :SecondLastName
      t.integer :Cellphone
      t.string :Email
      t.boolean :IsAdmin

      t.timestamps
    end
  end
end
