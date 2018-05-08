class CreateListTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :list_types do |t|
      t.string :category

      t.timestamps
    end
  end
end
