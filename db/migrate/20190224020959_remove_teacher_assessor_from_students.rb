class RemoveTeacherAssessorFromStudents < ActiveRecord::Migration[5.2]
  def change
    remove_column :students, :TeacherAssessor, :string
  end
end
