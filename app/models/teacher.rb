class Teacher < ApplicationRecord   
    has_many :teacher_places
    has_many :places, through: :teacher_places, dependent: :destroy
    has_many :schedules
end
