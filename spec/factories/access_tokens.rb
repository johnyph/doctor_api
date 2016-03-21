FactoryGirl.define do
  factory :access_token, class: Doctor::AccessToken do
    association :user, factory: :user
    access_token SecureRandom.hex
	  expired_at 4.hours.from_now
  end
end
