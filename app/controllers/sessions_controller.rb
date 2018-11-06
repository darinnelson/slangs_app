class SessionsController < ApplicationController

  def new
    render "new.html.erb"
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      jwt = JWT.encode(
        {
          user_id: user.id, # the data to encode
          exp: 24.hours.from_now.to_i # the expiration time
        },
        Rails.application.credentials.fetch(:secret_key_base), # the secret key
        'HS256' # the encryption algorithm
      )
      redirect_to "/countries"
      # render json: {jwt: jwt, email: user.email, user_id: user.id}, status: :createds
    else
      @something = 1
      render "new.html.erb"
    end
  end
end
