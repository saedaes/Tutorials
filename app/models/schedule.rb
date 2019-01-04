class Schedule < ApplicationRecord
     belongs_to :teacher
     belongs_to :place
     belongs_to :subject
end
