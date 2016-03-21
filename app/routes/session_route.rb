module Doctor
  module Routes
    class SessionRoute < Doctor::Routes::ApplicationRoute
      
      post '/' do
        user = User.where(email: params[:email]).first
        
        if user && user.authenticate(params[:password] )
          json user, { root: 'user', serializer: Doctor::AuthenticationUserSerializer }
        else
          error 401 
        end 

      end

    end
  end
end
