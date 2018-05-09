class AddListTypeReferenceToLists < ActiveRecord::Migration[5.1]
  def change
    add_reference :lists, :list_type, foreign_key: true
  end
end
