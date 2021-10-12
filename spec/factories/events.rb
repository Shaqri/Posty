FactoryBot.define do
  factory :event do
    user { nil }
    action { "MyString" }
    eventable_id { 1 }
    eventable_type { "MyString" }
  end
end
