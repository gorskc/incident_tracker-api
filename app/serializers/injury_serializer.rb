class InjurySerializer < ActiveModel::Serializer
  attributes :affected_body_part, :type_of_injury, :treatment
end
