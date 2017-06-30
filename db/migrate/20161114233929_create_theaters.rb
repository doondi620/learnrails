class CreateTheaters < ActiveRecord::Migration
  def change
    create_table :theaters do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :country

      t.timestamps null: false
    end
  end
end
