class TeacherPlaces < ActiveRecord::Migration[5.2]
  def change
     change_table :teacher_places, :id => false do |t|
      t.references :place
      t.references :teacher
    end
    add_index :teacher_places, :TeacherAccount
    add_index :teacher_places, :IdPlace
  end
end
