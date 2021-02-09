FactoryBot.define do
  factory :address do
    author
    street_number { "2118" }
    street { "Wilshire Blvd" }
    postcode { "90403" }
    city { "Santa Monica" }
    state { "California" }
  end
end
