class Busstand < ActiveRecord::Migration
  def change
  	create_table :bus_stands do |t|
  		t.integer :number_of_buses
    	t.string :name

    	t.timestamps
    end
  end
end

