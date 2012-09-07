class CreateDictionaries < ActiveRecord::Migration
  def change
    create_table :dictionaries do |t|
 	  t.string :word
      t.string :key

      t.timestamps
    end

    add_index(:dictionaries, [:key, :word])
  end
end
