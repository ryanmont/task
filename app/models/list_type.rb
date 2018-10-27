class ListType < ApplicationRecord
  has_many :lists, dependent: :destroy
end
