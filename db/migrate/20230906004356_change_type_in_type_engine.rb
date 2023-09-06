class ChangeTypeInTypeEngine < ActiveRecord::Migration[7.0]
  def change
    rename_column :type_engines, :type, :name
  end
end
