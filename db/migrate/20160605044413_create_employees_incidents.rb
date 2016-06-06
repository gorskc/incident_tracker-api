class CreateEmployeesIncidents < ActiveRecord::Migration[5.0]
  def change
    create_table :employees_incidents do |t|
      t.belongs_to :employees, index: true
      t.belongs_to :incidents, index: true
    end
  end
end
