FactoryGirl.define do
  factory :user, class: Doctor::User do
  	name 'Ιωαννης-Ανδρεας Φίλιππας'
		email 'iphilippas@gmail.com'
		password 'qwerty'
	end
end
