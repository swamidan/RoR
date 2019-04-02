class Book < ApplicationRecord
  belongs_to :library
  has_one :issuing
end
