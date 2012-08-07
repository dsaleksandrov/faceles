class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.string :email

      t.timestamps
    end
  end
end
