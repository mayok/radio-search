class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.string :title
      t.string :type
      t.string :thumbnailPath
      t.text :personality

      t.timestamps null: false
    end
  end
end
