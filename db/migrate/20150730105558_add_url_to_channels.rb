class AddUrlToChannels < ActiveRecord::Migration
  def change
    add_column :channels, :url, :string
  end
end
