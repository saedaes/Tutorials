class Subject < ApplicationRecord
    has_many :teacher_subjects
    has_many :teachers, through: :teacher_subjects, dependent: :destroy
    has_many :schedules
end
