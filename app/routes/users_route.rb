module Doctor
  module Routes
    class UsersRoute < Doctor::Routes::ApplicationRoute
      get '/' do
        json Doctor::User.all, { root: 'users', each_serializer: Doctor::UserSerializer }
      end
      
      get '/:id' do
        json Doctor::User.find(params[:id]), { root: 'user', serializer: Doctor::UserSerializer }
      end

    end
  end
end
