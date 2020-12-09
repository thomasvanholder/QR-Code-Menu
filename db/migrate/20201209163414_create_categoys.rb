class CreateCategoys < ActiveRecord::Migration[6.0]
  def change
    create_table :categoys do |t|
      t.string :name
      t.references :menu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
