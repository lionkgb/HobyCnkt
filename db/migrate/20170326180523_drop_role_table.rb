class DropRoleTable < ActiveRecord::Migration[5.0]
  def up
    drop_table :roles
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
