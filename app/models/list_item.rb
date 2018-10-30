class ListItem < ApplicationRecord
  belongs_to :list

  enum status: { incomplete: 0, complete: 1 }

  @list_item = ListItem.all
end
