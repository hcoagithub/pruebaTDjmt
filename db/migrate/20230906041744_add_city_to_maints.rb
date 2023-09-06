class AddCityToMaints < ActiveRecord::Migration[7.0]
  def change
    add_reference :maints, :city, null: false, foreign_key: true
  end
end
