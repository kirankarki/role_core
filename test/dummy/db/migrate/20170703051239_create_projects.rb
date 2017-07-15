class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.boolean :is_public, null: false, index: true, default: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
