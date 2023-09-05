class CreateTypeEngines < ActiveRecord::Migration[7.0]
  def change
    create_table :type_engines do |t|
      t.string :type

      t.timestamps
    end
  end
end
