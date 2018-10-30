class List < ApplicationRecord
  has_many :list_items, dependent: :destroy
  accepts_nested_attributes_for :list_items,
                                allow_destroy: true,
                                reject_if: lambda{ |attrs| attrs['item'].blank? } 

  belongs_to :list_type, optional: true
  belongs_to :user

  validates_presence_of :title, :list_type, :list_items

  enum status: { incomplete: 0, complete: 1 }

end
