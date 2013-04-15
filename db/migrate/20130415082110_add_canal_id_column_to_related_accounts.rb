class AddCanalIdColumnToRelatedAccounts < ActiveRecord::Migration
  def change
    add_column :related_accounts, :canal_id, :string
  end
end
