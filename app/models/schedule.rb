class Schedule < ApplicationRecord
     belongs_to :teacher,  :optional => true
     belongs_to :place,  :optional => true
     belongs_to :subject,  :optional => true
end
