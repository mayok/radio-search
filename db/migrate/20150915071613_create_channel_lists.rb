class CreateChannelLists < ActiveRecord::Migration
  def change
    create_table :channel_lists do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
