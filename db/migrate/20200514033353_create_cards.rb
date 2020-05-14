class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.text :question
      t.text :answer
      t.boolean :endorsed
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
