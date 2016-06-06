require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase
  should have_db_column(:first_name)
  should have_db_column(:last_name)
  should have_db_column(:department)
  should have_db_column(:job_title)
  should have_db_column(:date_of_hire)
  should have_db_column(:supervisor_first_name)
  should have_db_column(:supervisor_last_name)
end
