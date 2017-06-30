ch class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :hero
      t.string :heroin
      t.string :director
      t.string :producer
      t.references :theater, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
