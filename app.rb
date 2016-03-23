Dir.glob(File.join(File.dirname(__FILE__), 'app', '{helpers,models,routes}', "*.rb")){ |file| require file}

module Doctor
  class App < Sinatra::Base
    register Sinatra::ActiveRecordExtension
    helpers Doctor::JsonErrorHelper
     
    set :raise_errors, false
    set :show_exceptions, false 
   
    # General sinatra errors
    not_found do
      halt_json_error 404
    end

  end
end

