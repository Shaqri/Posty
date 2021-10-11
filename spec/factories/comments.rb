FactoryBot.define do
  factory :comment do
    commentable_type { "" }
    user { nil }
    body { "MyText" }
  end
end
