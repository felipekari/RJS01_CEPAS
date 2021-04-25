class CreateWineVarietyRelationship < ActiveRecord::Migration[5.2]
  def change
    create_table :wine_varieties do |t|
      t.belongs_to :wine, index: true
      t.belongs_to :variety, index: true
      t.integer :percentage
      t.timestamps
    end
  end
end
