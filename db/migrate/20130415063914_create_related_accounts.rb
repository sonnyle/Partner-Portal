class CreateRelatedAccounts < ActiveRecord::Migration
  def change
    create_table :related_accounts do |t|
      t.string :id
      t.string :name

      t.timestamps
    end
  end
end
