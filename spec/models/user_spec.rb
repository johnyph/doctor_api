require 'spec_helper'

describe 'User' do
  before { @user = FactoryGirl.create :user }
	subject { @user }
	it { should respond_to(:email) }
	it { should respond_to(:first_name) }
	it { should respond_to(:last_name) }
	it { should respond_to(:vat) }
	it { should respond_to(:password_digest) }
end
