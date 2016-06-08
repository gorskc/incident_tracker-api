class Injury < ActiveRecord::Base
  belongs_to :incident

  validates_presence_of :incident, allow_blank: true
end
