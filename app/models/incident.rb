class Incident < ActiveRecord::Base
  has_and_belongs_to_many :employees
  has_many :injuries, dependent: :destroy

  validates_presence_of :date_of_incident
end
