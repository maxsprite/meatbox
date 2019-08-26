class RegistrationsController < Devise::RegistrationsController
  respond_to :json
  protect_from_forgery with: :null_session


  def create
    build_resource(sign_up_params)

    resource.save
    render_resource(resource)
  end
end
