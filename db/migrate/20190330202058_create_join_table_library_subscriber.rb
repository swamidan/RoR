class CreateJoinTableLibrarySubscriber < ActiveRecord::Migration[5.2]
  def change
    create_join_table :libraries, :subscribers do |t|
      t.index [:library_id, :subscriber_id]
      t.index [:subscriber_id, :library_id]
    end
  end
end
