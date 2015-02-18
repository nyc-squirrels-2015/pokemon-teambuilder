class CreatePokemons < ActiveRecord::Migration
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :primary_type
      t.string :secondary_type
      t.string :photo_url
    end
  end
end
