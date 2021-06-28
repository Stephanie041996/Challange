# frozen_string_literal: true

class AddSlugWords < ActiveRecord::Migration[6.1]
  def change
    add_column :words, :slug, :string
    add_index :words, :slug, unique: true
  end
end
