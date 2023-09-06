class CreateMaints < ActiveRecord::Migration[7.0]
  def change
    create_table :maints do |t|
      t.string :photo
      t.string :date
      t.references :type_engine, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :type_maint, null: false, foreign_key: true
      t.references :machine, null: false, foreign_key: true
      t.string :materials

      t.timestamps
    end
  end
end
