class Maint < ApplicationRecord
  belongs_to :type_engine
  belongs_to :user
  belongs_to :type_maint
  belongs_to :machine
end
