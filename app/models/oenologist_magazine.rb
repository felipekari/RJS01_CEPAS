class OenologistMagazine < ApplicationRecord
  belongs_to :oenologist
  belongs_to :magazine
  validates :magazine_id, presence: true
end