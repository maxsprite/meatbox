class ProductsController < ApiController
  # before_action :authenticate_user!

  def index
    render json: Product.includes('product_categories')
                  .where(is_active: true)
                  .where(product_categories: { is_active: true })
                  .order(updated_at: :desc), include: ['product_categories']
  end
end
