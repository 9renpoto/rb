class CreateUserOrganizations < ActiveRecord::Migration[5.2]
  def up
    enable_extension('pgcrypto')

    create_table :user_organizations do |t|
      t.references :user, type: :uuid, foreign_key: true
      t.references :organization, foreign_key: true

      t.timestamps
    end
    add_index :user_organizations, [:user_id, :organization_id], unique: true
  end

  def down
    drop_table :user_organizations
  end
end
