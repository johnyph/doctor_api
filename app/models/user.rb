require 'sinatra/activerecord'

module Doctor
	class User < ActiveRecord::Base
	  has_many :access_tokens
    
    # Validation
    validates :email, presence:true, uniqueness:true
    validates :first_name, :last_name, presence: true
    validates :vat, presence:true, numericality: true, length: { is: 9 }
  end
end
