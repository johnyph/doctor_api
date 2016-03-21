require 'sinatra/activerecord'

module Doctor
	class AccessToken < ActiveRecord::Base
	  belongs_to :user

    # Validation
    validates :access_token, :expired_at, presence: true
  end
end
