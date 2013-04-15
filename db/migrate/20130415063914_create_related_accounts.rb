class CreateRelatedAccounts < ActiveRecord::Migration
  def change
    create_table :related_accounts do |t|
      t.string :id
      t.string :name
      t.string :user_id

      t.timestamps
    end
  end
end
