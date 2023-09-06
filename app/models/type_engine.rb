class TypeEngine < ApplicationRecord
    has_many :machines
    has_many :maints
end
