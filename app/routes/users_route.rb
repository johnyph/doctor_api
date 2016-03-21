module Doctor
  module Routes
    class UsersRoute < Doctor::Routes::ApplicationRoute
      get '/' do
        json Doctor::User.all, { root: 'users', each_serializer: Doctor::UserSerializer }
      end
    end
  end
end
