class MissingColumsToTodos < ActiveRecord::Migration
  def change
    change_table  :todos do |t|
      t.integer :days_left
      t.string  :complete
    end
  end
end
