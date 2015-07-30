class RemoveMovieTypeFromChannels < ActiveRecord::Migration
  def change
    remove_column :channels, :movieType, :string
  end
end
