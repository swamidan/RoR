class Issuing < ApplicationRecord
  belongs_to :subscriber
  belongs_to :book
end
