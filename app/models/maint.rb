class Maint < ApplicationRecord
  belongs_to :type_engine
  belongs_to :user
  belongs_to :type_maint
  belongs_to :machine
  belongs_to :city

  validates :type_engine, presence: true
  validates :type_maint, presence: true
  validates :type_machine, presence: true
  validates :user_id, presence: true
  validates :materials, presence: true
  validates :date, presence: true
  validates :city_id, presence: true
end
