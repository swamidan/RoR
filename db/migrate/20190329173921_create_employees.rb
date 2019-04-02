class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.integer  :employee_id
      t.integer  :library_id
      t.string   :surname
      t.string   :name
      t.string   :patronymic
      t.integer  :date_of_birth
      t.integer  :date_of_employment
      t.string   :position
      t.string   :education

      t.references  :library, foreign_key =true

      t.timestamps
    end
  end
end
