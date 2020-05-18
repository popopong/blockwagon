class CreateVideoCassettes < ActiveRecord::Migration[6.0]
  def change
    create_table :video_cassettes do |t|
      t.string :title
      t.string :year
      t.string :cover_photo
      t.string :description
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
