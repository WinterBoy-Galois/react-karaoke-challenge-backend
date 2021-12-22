class CreateUserSongData < ActiveRecord::Migration[5.2]
  def change
    create_table :user_song_data do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :song, index: true, foreign_key: true
      t.integer :plays
      t.integer :likes
      t.integer :dislikes

      t.timestamps
    end

    add_index :user_song_data, [:user_id, :song_id], unique: true
  end
end
