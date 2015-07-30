class AddGuestToChannels < ActiveRecord::Migration
  def change
    add_column :channels, :guest, :text
  end
end
