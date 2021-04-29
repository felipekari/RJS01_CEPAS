class Variety < ApplicationRecord
    has_many :wine_varieties
    has_many :wines, through: :wine_varieties, dependent: :destroy
    validates :name, presence: true

    scope :available_v, -> { where(:available => true)}
end
