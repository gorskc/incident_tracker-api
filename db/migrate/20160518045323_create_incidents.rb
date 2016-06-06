class CreateIncidents < ActiveRecord::Migration[5.0]
  def change
    create_table :incidents do |t|
      t.text :description
      t.date :date_of_incident
      t.date :date_reported
      t.text :location_of_incident
      t.string :type_of_incident
      t.boolean :property_damage
      t.text :description_of_damage
      t.text :suggested_corrective_action
      t.timestamps
    end
  end
end
