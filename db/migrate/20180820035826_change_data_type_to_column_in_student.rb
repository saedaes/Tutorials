class ChangeDataTypeToColumnInStudent < ActiveRecord::Migration[5.2]
  def change
       change_column :students, :TeacherAssessor, :string
  end
end
