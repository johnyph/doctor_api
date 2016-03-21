class Doctor::AccessTokenSerializer < ActiveModel::Serializer
  attributes :id, :access_token
  has_one :user
end
