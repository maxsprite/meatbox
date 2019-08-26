ActiveAdmin.register Product do
  permit_params :is_active, :title, product_category_ids: []
  
  form do |f|
    f.inputs 'Categories' do
      f.input :is_active
      f.input :product_categories, :as => :select, :input_html => {:multiple => true}
      f.input :title
    end
    f.actions
  end
end
