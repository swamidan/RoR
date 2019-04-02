class CreateLibraries < ActiveRecord::Migration[5.2]
  def change
    create_table :libraries do |t|
      t.integer  :library_id
      t.string   :number_library
      t.string   :name_library
      t.string   :address_library

      t.timestamps
    end
  end
end
