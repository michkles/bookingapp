FactoryBot.define do
  factory :space do
    name { 'tennis court' }
  end

  factory :booking do
    start_date { "2020-03-01 16:19:11" }
    end_date { "2020-12-01 16:19:11" }
    space
  end
end
