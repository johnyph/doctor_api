FactoryGirl.define do
  factory :user, class: Doctor::User do
		email 'iphilippas@gmail.com'
    first_name 'Ιωάννης-Ανδρέας'
    last_name 'Φίλιππας'
    vat 123456789
		password_digest '2a$10$wJTPdvpGgzDvkXChrcPyqOQrFFawzGu89B1rZze/lVIcJKWiNeAqS' # secret
	end
end
