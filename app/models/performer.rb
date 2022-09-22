class Performer < ApplicationRecord
    validates_presence_of :name, :email
    has_many :signups
end
