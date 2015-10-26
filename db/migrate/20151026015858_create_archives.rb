class CreateArchives < ActiveRecord::Migration
  def change
    create_table :archives do |t|
      t.string :specimen
      t.text :comment
      t.decimal :latitude, precision: 9, scale: 6
      t.decimal :longitude, precision: 9, scale: 6
      t.string :photo
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
