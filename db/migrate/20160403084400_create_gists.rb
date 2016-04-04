class CreateGists < ActiveRecord::Migration
  def change
    create_table :gists do |t|
      t.string :description
      t.string :file_name
      t.text :code
      t.boolean :secret, default: false
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
