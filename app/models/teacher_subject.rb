class TeacherSubject < ApplicationRecord
    belongs_to :teacher, :optional => true
    belongs_to :subject, :optional => true
end
