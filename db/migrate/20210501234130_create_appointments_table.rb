class CreateAppointmentsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.string :date
      t.string :time
      t.string :therapist
      t.string :insurance
    end
  end
end
