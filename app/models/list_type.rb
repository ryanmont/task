class ListType < ApplicationRecord
  has_many :lists, dependent: :destroy
  belongs_to :user

  validates_presence_of :category
end
