class CreateMicropots < ActiveRecord::Migration
  def change
    create_table :micropots do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
