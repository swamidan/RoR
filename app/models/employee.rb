class Employee < ApplicationRecord
  #validates :surname, :name, :patronymic, :date_of_birth, :date_of_employment, :position, :education, presence: true

  #attr_accessible :library_id

  belongs_to :library
end
