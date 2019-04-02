class Library < ApplicationRecord
  validates :name_library, :address_library, :number_library, presence: true

  has_many :employees #:primary_key => "library_id"
  has_one  :book
  has_and_belongs_to_many :subscribers
  has_one :issuing, through:  :book
end
