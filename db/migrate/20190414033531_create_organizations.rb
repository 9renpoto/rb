class CreateOrganizations < ActiveRecord::Migration[5.2]
  def up
    enable_extension('pgcrypto')

    create_table :organizations do |t|
      t.string :name

      t.timestamps
    end
    add_index :organizations, :name, unique: true
  end

  def down
    drop_table :organizations
  end
end
