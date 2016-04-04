FactoryGirl.define do
  factory :gist do
    association :user
    description { FFaker::Company.name }
    file_name { 'myfilename.rb' }
    code { FFaker::HTMLIpsum.a }
    secret { false }
  end
end
