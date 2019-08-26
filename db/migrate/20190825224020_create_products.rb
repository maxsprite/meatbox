class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.boolean :is_active
      t.string :title
      t.timestamps
    end
  end
end
