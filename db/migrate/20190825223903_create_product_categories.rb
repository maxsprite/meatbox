class CreateProductCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :product_categories do |t|
      t.boolean :is_active
      t.string :title
      t.timestamps
    end
  end
end
