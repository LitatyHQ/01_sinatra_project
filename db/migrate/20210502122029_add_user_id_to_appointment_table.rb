class AddUserIdToAppointmentTable < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :user_id, :interger
  end
end
