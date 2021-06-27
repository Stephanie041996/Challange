class CreateWords < ActiveRecord::Migration[6.1]
  def change
    create_table :words do |t|
      t.string :word
      t.string :sub_word
      t.integer :sub_length

      t.timestamps
    end
  end
end
