class CreateDerpus < ActiveRecord::Migration
  def change
    create_table :derpus do |t|

      t.timestamps
    end
  end
end
