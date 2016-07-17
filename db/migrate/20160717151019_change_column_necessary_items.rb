class ChangeColumnNecessaryItems < ActiveRecord::Migration[5.0]
  def change
    change_column :items, :necessary, :boolean, :default => true
  end
end
