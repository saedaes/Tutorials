class TutorialDate < ApplicationRecord
  validates :StudentRegister, presence: true
  validates :IdShedule, presence: true
  validates :Date, presence: true
  validates :Topic, presence: true	
end
