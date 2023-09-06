class Machine < ApplicationRecord
  has_one_attached :image
  belongs_to :type_engine

  validates :name, presence: true
  validates :description, presence: true
  validates :type_engine_id, presence: true

end
