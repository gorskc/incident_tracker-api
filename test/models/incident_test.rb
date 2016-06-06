require 'test_helper'

class IncidentTest < ActiveSupport::TestCase
  should have_db_column(:description)
  should have_db_column(:date_of_incident)
  should have_db_column(:date_reported)
  should have_db_column(:location_of_incident)
  should have_db_column(:type_of_incident)
  should have_db_column(:suggested_corrective_action)
  should have_db_column(:property_damage)
  should have_db_column(:description_of_damage)
end
