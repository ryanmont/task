class List < ApplicationRecord
  has_many :list_items
  accepts_nested_attributes_for :list_items,
                                allow_destroy: true,
                                reject_if: lambda{ |attrs| attrs['item'].blank? } 

  belongs_to :list_type, optional: true

end
