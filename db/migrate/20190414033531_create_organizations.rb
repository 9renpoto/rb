class CreateOrganizations < ActiveRecord::Migration[5.2]
  def up
    create_table :organizations do |t|
      t.string :name
      t.string :unique

      t.timestamps
    end
  end

  def down
    drop_table :organizations
  end
end
