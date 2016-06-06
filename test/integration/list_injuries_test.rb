require 'test_helper'

class ListInjuriesTest < ActionDispatch::IntegrationTest
  test 'listing injuries without content' do
    get '#/injuries'

    assert_equal 200, response.status
    assert_equal Mime[:json], response.content_type
  end

  test 'listing injuries with content' do
    Injury.create!(affected_body_part: 'Body part',
                   type_of_injury: 'Injury',
                   treatment: 'Treatment')
    Injury.create!(affected_body_part: 'Body part 2',
                   type_of_injury: 'Injury 2',
                   treatment: 'Treatment 2')
    get '#/injuries'

    assert_equal 200, response.status
    assert_equal Mime[:json], response.content_type
    assert_equal Injury.count, JSON.parse(response.body).size
end
