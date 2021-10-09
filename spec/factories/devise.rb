FactoryBot.define do
  factory :user do
    id {1}
    name {"test user"}
    email {"test@user.com"}
    password {"password"}
  end
end