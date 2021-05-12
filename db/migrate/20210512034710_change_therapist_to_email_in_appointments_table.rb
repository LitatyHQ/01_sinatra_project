class ChangeTherapistToEmailInAppointmentsTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :appointments, :therapist, :email

  end
end
