class CreateVarieties < ActiveRecord::Migration[5.2]
  def change
    create_table :varieties do |t|
      t.string :name
      t.boolean :available, default: true

      t.timestamps
    end
  end
end
