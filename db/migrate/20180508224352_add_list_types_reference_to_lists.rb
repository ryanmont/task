class AddListTypesReferenceToLists < ActiveRecord::Migration[5.1]
  def change
    add_reference :lists, :list_types, foreign_key: true
  end
end
