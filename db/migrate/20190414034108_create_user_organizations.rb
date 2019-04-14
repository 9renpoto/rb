class CreateUserOrganizations < ActiveRecord::Migration[5.2]
  def up
    create_table :user_organizations do |t|

      t.timestamps
    end
  end

  def down
    drop_table :user_organizations
  end
end
