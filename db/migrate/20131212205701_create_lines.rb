class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.text :text
      t.references :speech, index: true

      t.timestamps
    end
  end
end
