class CreateJoinTableProductCategoriesProducts < ActiveRecord::Migration[6.0]
  def change
    create_join_table :product_categories, :products do |t|
      t.index [:product_category_id, :product_id], name: 'index_category_id_product_id'
      t.index [:product_id, :product_category_id], name: 'index_product_id_category_id'
    end
  end
end
