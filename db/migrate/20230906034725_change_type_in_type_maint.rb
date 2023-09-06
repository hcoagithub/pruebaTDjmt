class ChangeTypeInTypeMaint < ActiveRecord::Migration[7.0]
  def change
    rename_column :type_maints, :type, :name
  end
end
