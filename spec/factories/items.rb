FactoryBot.define do
  factory :item do
    name                  {"キットカット"}
    description           {"美味しいよ！"}
    category_id           {"187"}
    size_id               {"3"}
    brand                 {"puma"}
    condition_id          {"1"}
    shipping_payer_id     {"3"}
    shipping_way_id       {"1"}
    shipping_address_id   {"3"}
    shipping_day_id       {"3"}
    price                 {"300"}
    created_at            {"2019-07-19 06:14:07"}
    updated_at            {"2019-07-19 06:14:07"}
    status                {"selling_item"}
    seller_id             {"1"}
    buyer_id              {"0"}
  end
end
