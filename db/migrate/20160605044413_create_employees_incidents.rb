class CreateEmployeesIncidents < ActiveRecord::Migration[5.0]
  def change
    create_table :employees_incidents, id: false do |t|
      t.belongs_to :employee, index: true
      t.belongs_to :incident, index: true
    end
  end
end
