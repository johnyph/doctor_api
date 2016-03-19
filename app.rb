Dir.glob(File.join(File.dirname(__FILE__), 'app', '{helpers,models,routes}', "*.rb")){ |file| require file}

module Doctor
	class App < Sinatra::Base
		# Register sinatra_Active_record
		register Sinatra::ActiveRecordExtension
    	
		# Enable sessions
    enable :sessions

    # Development configuration
    configure :development do
    	set :database, {adapter: "sqlite3", database: "db/doctor.sqlite3"}
    end
		
		configure :testing do
    	set :database, {adapter: "sqlite3", database: "db/doctor.testing.sqlite3"}
    end
	
	end
end
