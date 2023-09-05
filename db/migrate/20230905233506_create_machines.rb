class CreateMachines < ActiveRecord::Migration[7.0]
  def change
    create_table :machines do |t|
      t.string :name
      t.string :description
      t.string :image
      t.references :type_engine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
