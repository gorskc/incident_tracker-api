class CreateInjuries < ActiveRecord::Migration[5.0]
  def change
    create_table :injuries do |t|
      t.string :affected_body_part
      t.string :type_of_injury
      t.string :treatment
      t.timestamps
    end
  end
end
