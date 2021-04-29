class CreateWineOenologistRelationship < ActiveRecord::Migration[5.2]
  def change
    create_table :wine_oenologists do |t|
      t.belongs_to :wine, index: true
      t.belongs_to :oenologist, index: true
      t.integer :score
      t.timestamps
    end
  end
end
