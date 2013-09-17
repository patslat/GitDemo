class CreatePotatos < ActiveRecord::Migration
  def change
    create_table :potatos do |t|

      t.timestamps
    end
  end
end
