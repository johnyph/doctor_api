class Doctor::UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :vat, :access_token
end
