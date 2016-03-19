module Doctor
	module Routes
  	class ApplicationRoute < Sinatra::Base
			# Register sinatra_Active_record
			register Sinatra::ActiveRecordExtension
    	
			# Enable sessions
      enable :sessions

      # Development configuration
      configure :development do
      	set :database, {adapter: "sqlite3", database: "db/doctor.sqlite3"}
      end
    end
  end
end
