class SessionsController < Devise::SessionsController
  respond_to :json
  protect_from_forgery with: :null_session
  
  private

  def respond_with(resource, _opts = {})
    unless resource.id.nil?
      render json: resource
    else
      render json: {
        errors: [
          {
            status: '401',
            title: 'Unauthorized'
          }
        ]
      }, status: :unauthorized
    end
  end

  def respond_to_on_destroy
    head :no_content
  end
end
