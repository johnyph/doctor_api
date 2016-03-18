
require 'sinatra/activerecord'

module Doctor
    module Routes
        class ApplicationRoute < Sinatra::Base
            # Enable sessions
            enable :sessions

            # Development configuration
            configure :development do
                set :database, {adapter: "sqlite3", database: "db/doctor.sqlite3"}
            end

        end
    end
end
