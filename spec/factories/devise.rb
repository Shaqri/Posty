FactoryBot.define do
  factory :user do
    id {1}
    name {"test user"}
    email {"test@user.com"}
    password {"qwerty"}
    password_confirmation {"qwerty"} 
  end
end