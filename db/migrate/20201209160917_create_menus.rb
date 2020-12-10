class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.belongs_to :user, optional: true
      t.string :name

      t.timestamps
    end
  end
end
