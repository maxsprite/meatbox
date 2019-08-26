class UsersController < ApiController
  before_action :authenticate_user!
  
  def my_profile
    render json: current_user
  end

  def add_products
    if current_user.id === params['user_id'].to_i && Product.exists?(id: params['product_id'])
      return render json: Product.find(params['product_id'])
    else
      render json: {
        errors: [
          {
            status: '400',
            title: 'Bad Request',
            detail: "Not current_user or doesn't exist product by id",
            code: '100'
          }
        ]
      }, status: :bad_request
    end
  end
end
