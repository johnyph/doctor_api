require 'sinatra/activerecord'

module Doctor
	class User < ActiveRecord::Base
    has_secure_password
    
    # Validation
    validates :email, presence:true, uniqueness:true
    validates :first_name, :last_name, presence: true
    validates :vat, presence:true, numericality: true, length: { is: 9 }
    
    # Callbacks
    before_create :ensure_access_token

    def ensure_access_token
      if access_token.blank?
        self.access_token = generate_access_token
      end
    end

    private

    def generate_access_token
      loop do
        token = SecureRandom.hex

        break token unless User.where(access_token: token).first
      end
    end
  end
end
