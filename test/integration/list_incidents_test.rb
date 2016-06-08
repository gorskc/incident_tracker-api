require 'test_helper'

class ListIncidentsTest < ActionDispatch::IntegrationTest
  test 'listing incidents without content' do
    get '/incidents'

    assert_equal 200, response.status
    assert_equal Mime[:json], response.content_type
  end

  test 'listing incidents with content' do
    Incident.create!(description: 'Injury1',
                     date_of_incident: '2016-02-02',
                     date_reported: '2016-02-02',
                     location_of_incident: 'Location1',
                     type_of_incident: 'Incident1',
                     property_damage: 'True',
                     description_of_damage: 'Damage',
                     suggested_corrective_action: 'Action1')
    Incident.create!(description: 'Injury2',
                     date_of_incident: '2015-02-02',
                     date_reported: '2015-02-02',
                     location_of_incident: 'Location2',
                     type_of_incident: 'Incident2',
                     property_damage: 'True',
                     description_of_damage: 'Lots of damage',
                     suggested_corrective_action: 'Action2')
    get '/incidents'

    assert_equal 200, response.status
    assert_equal Mime[:json], response.content_type
    assert_equal Incident.count, JSON.parse(response.body).size
  end
end
