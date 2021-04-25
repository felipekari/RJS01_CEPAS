class Variety < ApplicationRecord
    has_many :wine_varieties
    has_many :wines, through: :wine_varieties, dependent: :destroy

    scope :available_v, -> { where(:available => true)}
end
