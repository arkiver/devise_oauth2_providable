FactoryGirl.define do
  factory :client, :class => 'Devise::Oauth2Providable::Client' do |f|
    f.name 'test'
    f.website 'http://localhost'
    f.redirect_uri 'http://localhost:3000'
  end

  factory :user do |f|
    f.email 'ryan@socialcast.com'
    f.password 'test'
  end
end
