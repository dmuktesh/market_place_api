require 'spec_helper'

describe User do
  before { @user = FactoryGirl.build(:user) }
  subject { @user }
  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should be_valid }
end
=begin
according to new rspec 
require 'spec_helper'

describe User do
  let(:user) { FactoryGirl.build(:user) }
  it "" do
    expect(user).to respond_to(:email)
    expect(user).to respond_to(:password)
    expect(user).to respond_to(:password_confirmation)
    expect(user).to be_valid
  end
end
=end
