class CreateTypeMaints < ActiveRecord::Migration[7.0]
  def change
    create_table :type_maints do |t|
      t.string :type

      t.timestamps
    end
  end
end
