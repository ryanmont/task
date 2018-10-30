class ListItem < ApplicationRecord
  belongs_to :list
  belongs_to :user

  enum status: { incomplete: 0, complete: 1 }

  @list_item = ListItem.all
end
