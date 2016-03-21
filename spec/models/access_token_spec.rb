require 'spec_helper'

describe 'AccessToken' do
  before { @access_token = FactoryGirl.create :access_token }
	subject { @access_token }
	it { should respond_to(:access_token) }
	it { should respond_to(:expired_at) }
	it { should respond_to(:created_at) }
	it { should respond_to(:user) }

  it { should validate_presence_of :access_token }
  it { should validate_presence_of :expired_at }

  it { should belong_to :user }
end
