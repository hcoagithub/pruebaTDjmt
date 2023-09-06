class Machine < ApplicationRecord
  has_one_attached :image
  belongs_to :type_engine
end
