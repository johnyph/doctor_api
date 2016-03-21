require 'spec_helper'

describe 'AceessToken' do
  before { @access_token = FactoryGirl.create :access_token }
	subject { @access_token }
	it { should respond_to(:access_token) }
	it { should respond_to(:expired_at) }
	it { should respond_to(:created_at) }
	it { should respond_to(:user) }
end
