class Place < ApplicationRecord
    has_many :teacher_places
    has_many :teachers, through: :teacher_places, dependent: :destroy
    has_many :schedules
end
