class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :name
      t.references :play, index: true

      t.timestamps
    end
  end
end
