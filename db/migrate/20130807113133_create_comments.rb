class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :user_name
      t.text :body
      t.integer :pic_d

      t.timestamps

      add_foreign_key :comments, :idea
    end
  end
end
