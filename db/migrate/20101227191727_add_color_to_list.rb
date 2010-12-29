class AddColorToList < ActiveRecord::Migration
  def self.up
    add_column :lists, :color_id, :string
  end

  def self.down
    remove_column :lists, :color_id
  end
end
