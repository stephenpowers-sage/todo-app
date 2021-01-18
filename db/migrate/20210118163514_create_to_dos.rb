class CreateToDos < ActiveRecord::Migration[6.1]
  def change
    create_table :to_dos do |t|
      t.string :title
      t.string :description
      t.boolean :completed
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
