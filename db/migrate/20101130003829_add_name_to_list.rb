class AddNameToList < ActiveRecord::Migration
  def self.up
    add_column :lists, :name, :string
    add_column :lists, :position, :integer
  end

  def self.down
    remove_column :lists, :position
    remove_column :lists, :name
  end
end
