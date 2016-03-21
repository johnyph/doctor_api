require 'sinatra/activerecord'

module Doctor
	class User < ActiveRecord::Base
	  #has_many :access_tokens

  end
end
