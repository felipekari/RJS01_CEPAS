class Oenologist < ApplicationRecord
  has_many :oenologist_magazines, inverse_of: :oenologist, validate: true
  has_many :magazines, through: :oenologist_magazines, dependent: :destroy
  accepts_nested_attributes_for :oenologist_magazines, reject_if: :all_blank
  validates_presence_of :oenologist_magazines

  has_many :wine_oenologists
  has_many :wines, through: :wine_oenologists, dependent: :destroy

  validates :name, presence: true
  validates :age, presence: true
  validates :nationality, presence: true
end
