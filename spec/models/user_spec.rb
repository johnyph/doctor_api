require 'spec_helper'

describe 'User' do
  before { @user = FactoryGirl.create :user }
	subject { @user }
	it { should respond_to(:email) }
	it { should respond_to(:first_name) }
	it { should respond_to(:last_name) }
	it { should respond_to(:vat) }
	it { should respond_to(:password_digest) }

  it { should validate_presence_of :email }
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :vat }


  it { should validate_uniqueness_of :email }
  it { should validate_numericality_of :vat }
  it { should validate_length_of(:vat).is_equal_to(9) }
end
