class ChangeInsuranceToNameInAppointmentsTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :appointments, :insurance, :name
  end
end
