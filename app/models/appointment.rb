class Appointment < ActiveRecord::Base
    belongs_to :user #gives you the setter and the getter
end