class Wine < ApplicationRecord
    has_many :wine_varieties, inverse_of: :wine, validate: true
    has_many :varieties, through: :wine_varieties, dependent: :destroy
    accepts_nested_attributes_for :wine_varieties, reject_if: :all_blank
    validates_presence_of :wine_varieties
    
    has_many :wine_oenologists, validate: true
    has_many :oenologists, through: :wine_oenologists, dependent: :destroy
    accepts_nested_attributes_for :wine_oenologists, reject_if: :all_blank

    validates :name, presence: true
end
