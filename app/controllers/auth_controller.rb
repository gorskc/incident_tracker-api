class AuthController < ApplicationController
  def authenticate
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      render json: authentication_payload(user), status: 200
    else
      render json: {errors: ['Invalid email or password']},
        status: 401
    end
  end

  private
    def authentication_payload(user)
      return nil unless user && user.id
      { auth_token: AuthToken.encode( { user_id: id} ),
          user: { id: user.id, email: user.email }}
    end
end
