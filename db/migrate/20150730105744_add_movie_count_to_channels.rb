class AddMovieCountToChannels < ActiveRecord::Migration
  def change
    add_column :channels, :movieCount, :string
  end
end
