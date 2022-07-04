class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :duration
      t.string :genre

      t.timestamps
    end
  end
end
