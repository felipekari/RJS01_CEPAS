class WineVariety < ApplicationRecord
    belongs_to :wine
    belongs_to :variety
    validates :variety_id, presence: true
    validates :percentage, presence: true

    scope :varietieslist, -> (id) { joins(:wine).joins(:variety).where(:wine_id => id).merge(Variety.order(name: :asc))}

end
