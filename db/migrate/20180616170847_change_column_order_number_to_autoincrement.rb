class ChangeColumnOrderNumberToAutoincrement < ActiveRecord::Migration[5.0]
  def change
    change_column :steps, :order_number, :integer, auto_increment: true
  end
end
