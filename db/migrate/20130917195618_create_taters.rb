class CreateTaters < ActiveRecord::Migration
  def change
    create_table :taters do |t|

      t.timestamps
    end
  end
end
