class AddKindToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :kind, :integer, default: 1
  end
end
