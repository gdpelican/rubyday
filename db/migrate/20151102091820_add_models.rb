class AddModels < ActiveRecord::Migration
  def change
    create_table :singers do |t|
      t.string :name
    end

    create_table :songs do |t|
      t.string :title
      t.belongs_to :singer
      t.integer :duration
      t.text :lyrics
    end
  end
end
