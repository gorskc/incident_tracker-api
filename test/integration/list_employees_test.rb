require 'test_helper'

class ListEmployeesTest < ActionDispatch::IntegrationTest
  test 'listing employees without content' do
    get '#/employees'

    assert_equal 200, response.status
    assert_equal Mime[:json], response.content_type
  end

  test 'listing employees with content' do
    Employee.create!(first_name: 'Employee',
                     last_name: 'One',
                     department: 'Department',
                     job_title: 'Job',
                     date_of_hire: '2015-12-03',
                     supervisor_first_name: 'Boss',
                     supervisor_last_name: 'One')
    Employee.create!(first_name: 'Employee',
                     last_name: 'Two',
                     department: 'Department 2',
                     job_title: 'Job 2',
                     date_of_hire: '2010-01-01',
                     supervisor_first_name: 'Boss',
                     supervisor_last_name: 'Two')
    get '#/employees'

    assert_equal 200, response.status
    assert_equal Mime[:json], response.content_type
    assert_equal Employee.count, JSON.parse(response.body).size
end
