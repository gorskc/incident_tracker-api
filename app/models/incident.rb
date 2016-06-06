class Incident < ActiveRecord::Base
  has_and_belongs_to_many :employees
  has_many :injuries
end
