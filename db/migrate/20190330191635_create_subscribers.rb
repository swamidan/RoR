class CreateSubscribers < ActiveRecord::Migration[5.2]
  def change
    create_table :subscribers do |t|
      t.integer :subscriber_id
      t.integer :library_id
      t.integer :ticket_of_number
      t.string  :surname
      t.string  :name
      t.string  :patronymic
      t.string  :address
      t.integer :phone

      t.timestamps
    end
  end
end
