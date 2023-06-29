class AddSleepsToProperty < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :description, :string
    add_column :properties, :sleeps, :integer
    add_column :properties, :amenities, :string, array: true, default: []
  end
end
