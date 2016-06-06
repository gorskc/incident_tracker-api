require 'test_helper'

class InjuryTest < ActiveSupport::TestCase
  should have_db_column(:affected_body_part)
  should have_db_column(:type_of_injury)
  should have_db_column(:treatment)
  should have_db_column(:location_of_incident)
  should have_db_column(:type_of_incident)
  should have_db_column(:suggested_corrective_action)
  should have_db_column(:property_damage)
  should have_db_column(:description_of_damage)
end
