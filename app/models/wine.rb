class Wine < ApplicationRecord
    has_many :wine_varieties, inverse_of: :wine, validate: true
    has_many :varieties, through: :wine_varieties, dependent: :destroy
    accepts_nested_attributes_for :wine_varieties, reject_if: :all_blank
    validates :name, presence: true
    validates_presence_of :wine_varieties
end
