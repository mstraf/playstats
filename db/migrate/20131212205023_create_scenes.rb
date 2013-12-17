class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.string :title
      t.references :act, index: true

      t.timestamps
    end
  end
end
