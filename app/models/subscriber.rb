class Subscriber < ApplicationRecord
  has_and_belongs_to_many :libraries
  has_many :issuings
end
