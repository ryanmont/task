class AddUserReferenceToListTypes < ActiveRecord::Migration[5.1]
  def change
    add_reference :list_types, :user, foreign_key: true
  end
end
