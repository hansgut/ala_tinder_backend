class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email, index: { unique: true, name: 'unique_emails' }
      t.text :bio
      t.date :birthday
      t.boolean :hidden, default: false

      t.timestamps
    end
  end
end
