module Doctor
	module Routes
  	class ApplicationRoute < Sinatra::Base

		  register Sinatra::ActiveRecordExtension
      helpers Doctor::JsonErrorHelper
     
      set :raise_errors, false
      set :show_exceptions, false 
      
      # Development configuration
      configure :development do
    	  set :database, {adapter: "sqlite3", database: "db/doctor.sqlite3"}
      end
		
		  configure :test do 
    	  set :database, {adapter: "sqlite3", database: "db/doctor.testing.sqlite3"}
      end


      error ActiveRecord::RecordNotFound do
        halt_json_error 404
      end

    end
  end
end
