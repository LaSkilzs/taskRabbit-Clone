FactoryBot.define do
  factory :business do
    name { "MyString" }
    tagline { "MyString" }
    description { "MyString" }
    street { "MyString" }
    city { "MyString" }
    state { "MyString" }
    zip { "MyString" }
    industry { nil }
    user { nil }
  end
end
