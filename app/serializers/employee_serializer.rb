class EmployeeSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name, :department, :job_title, :date_of_hire,
             :supervisor_first_name, :supervisor_last_name
end
