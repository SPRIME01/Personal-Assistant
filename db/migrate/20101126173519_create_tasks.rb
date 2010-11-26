class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.datetime :due_by
      t.integer :list_id
      t.integer :group_id
      t.integer :user_id
      t.integer :category_id
      t.boolean :repeatable

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
