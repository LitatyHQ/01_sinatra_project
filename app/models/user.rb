class User < ActiveRecord::Base
    has_secure_password
    has_many :appointments
    validates_uniqueness_of :username
end