class IncidentSerializer < ActiveModel::Serializer
  attributes :id, :description, :date_of_incident, :date_reported,
             :location_of_incident, :type_of_incident, :property_damage, :description_of_damage,
             :suggested_corrective_action
end
