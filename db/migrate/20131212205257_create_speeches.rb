class CreateSpeeches < ActiveRecord::Migration
  def change
    create_table :speeches do |t|
      t.references :scene, index: true
      t.references :persona, index: true

      t.timestamps
    end
  end
end
