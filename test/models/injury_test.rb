require 'test_helper'

class InjuryTest < ActiveSupport::TestCase
  should have_db_column(:affected_body_part)
  should have_db_column(:type_of_injury)
  should have_db_column(:treatment)
end
