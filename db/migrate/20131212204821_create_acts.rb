class CreateActs < ActiveRecord::Migration
  def change
    create_table :acts do |t|
      t.string :title
      t.references :play, index: true

      t.timestamps
    end
  end
end
