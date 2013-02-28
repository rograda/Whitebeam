class CreateStatuas < ActiveRecord::Migration
  def change
    create_table :statuas do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
