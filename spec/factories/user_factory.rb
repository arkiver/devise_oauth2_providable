FactoryGirl.define do
  sequence :user do |f|
    f.email 'ryan@socialcast.com'
    f.password 'test'
  end
end
