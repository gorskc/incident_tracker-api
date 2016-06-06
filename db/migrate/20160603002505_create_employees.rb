class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :department
      t.string :job_title
      t.date :date_of_hire
      t.string :supervisor_first_name
      t.string :supervisor_last_name
      t.timestamps
    end
  end
end
