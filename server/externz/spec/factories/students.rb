FactoryBot.define do
  factory :student do
    fname { "MyString" }
    mname { "MyString" }
    lname { "MyString" }
    street { "MyString" }
    city { "MyString" }
    state { "MyString" }
    zip { "MyString" }
    major { "MyString" }
    education { "MyString" }
    degree { false }
    image { "MyString" }
    user { nil }
  end
end
