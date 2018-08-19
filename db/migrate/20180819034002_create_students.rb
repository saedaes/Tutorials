class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.bigint :Register
      t.string :Name
      t.string :LastName
      t.string :SecondLastName
      t.bigint :Cellphone
      t.boolean :IsAssessor
      t.integer :TeacherAssessor

      t.timestamps
    end
  end
end
