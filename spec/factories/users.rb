FactoryBot.define do
  factory :user do
    nickname                {"abe"}
    email                   {"aaa@gmail.com"}
    password                {"00000000"}
    password_confirmation   {"00000000"}
    prefecture_id           {"1"}
    family_name             {"田中"}
    first_name              {"一郎"}
    family_name_kana        {"タナカ"}
    first_name_kana         {"イチロウ"}
    birth_year              {"2000"}
    birth_month             {"1"}
    birth_day               {"2"}
    post_code               {"130-0014"}
    address_city            {"東京都足立区"}
    address_location        {"23334-121"}
    address_building        {"アジアンビル９F"}
    address_phone           {"090-1111-2222"}
  end
end
