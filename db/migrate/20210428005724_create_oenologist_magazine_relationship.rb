class CreateOenologistMagazineRelationship < ActiveRecord::Migration[5.2]
  def change
    create_table :oenologist_magazines do |t|
      t.belongs_to :oenologist, index: true
      t.belongs_to :magazine, index: true
      t.timestamps
    end
  end
end
