require 'sinatra/activerecord'

module Doctor
	class AccessToken < ActiveRecord::Base
	  belongs_to :user
  end
end
