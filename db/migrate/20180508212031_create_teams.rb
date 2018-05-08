class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :title
      t.string :description
      t.string :due
      t.string :hours
      t.string :percent
      t.string :image
      t.string :other

      t.timestamps
    end
  end
end
