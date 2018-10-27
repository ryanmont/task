class ListType < ApplicationRecord
  has_many :lists, dependent: :destroy

  validates_presence_of :category
end
