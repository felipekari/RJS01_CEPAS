class WineOenologist < ApplicationRecord
  belongs_to :wine
  belongs_to :oenologist
  validates :oenologist_id, presence: true
  validates :score, presence: true

  scope :oenologistscore, -> (id) { joins(:wine).joins(:oenologist).where(:wine_id => id).merge(Oenologist.order(age: :asc))}


end