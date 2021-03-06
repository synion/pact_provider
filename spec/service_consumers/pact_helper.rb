require 'pact/provider/rspec'

Pact.service_provider "User" do
  honours_pact_with 'User Sign up' do
    pact_uri (Dir.pwd  + '/spec/pacts/user-user_sign_up.json')
  end
end

Pact.provider_states_for "User" do
  provider_state "a request for sign up user" do
    tear_down do
      User.delete_all
      ApiToken.delete_all
    end
  end
end
