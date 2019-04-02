class CreateIssuings < ActiveRecord::Migration[5.2]
  def change
    create_table :issuings do |t|
      t.integer :issuings_id
      t.integer :book_id
      t.integer :subscriber_id
      t.integer :date_of_issuing
      t.integer :date_of_return

      t.references  :subscriber_id, foreign_key =true


      t.timestamps
    end
  end
end
