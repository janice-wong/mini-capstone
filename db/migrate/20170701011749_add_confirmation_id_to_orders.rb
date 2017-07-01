class AddConfirmationIdToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :confirmation_id, :string
  end
end
