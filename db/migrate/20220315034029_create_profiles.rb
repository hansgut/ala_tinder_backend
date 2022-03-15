class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.date :birthday
      t.text :bio
      t.string :name

      t.timestamps
    end
  end
end
