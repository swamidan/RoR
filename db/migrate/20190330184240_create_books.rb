class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.integer :book_id
      t.integer :library_id
      t.string :name_of_book
      t.string :author
      t.string :call_number
      t.string :publishing_house
      t.integer :year_of_publishing
      t.integer :price
      t.integer :date_of_receipt
      t.integer :issuing_id

      t.references  :library, foreign_key =true


      t.timestamps

    end
  end
end
