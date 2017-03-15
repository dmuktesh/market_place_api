require 'spec_helper'
describe User do
  before { @user = FactoryGirl.build(:user) }
describe "respond to" do
  subject { @user }
  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should be_valid }
end
describe "when email is not present" do
  before { @user.email = " " }
  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email).case_insensitive }
  it { should validate_confirmation_of(:password) }
  it { should allow_value('example@domain.com').for(:email)}
end
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
describe "when email is not present" do
  let(:user) { FactoryGirl.build(:user, email: "") }
  it "will invalidate user" do
    expect(user).to be_valid
  end
end
=end
