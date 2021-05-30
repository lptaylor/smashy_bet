FactoryBot.define do
    factory :match do
        sequence(:date) { Faker::Date.between(from: '2021-01-01', to: '2021-05-29') }
        sequence(:vod_link) { 'https://www.twitch.tv/videos/1038649472?t=04h16m47s' }
        sequence(:description) { Faker::Games::WarhammerFantasy.quote }
        sequence(:stage) { Faker::Games::SuperSmashBros.stage }
        sequence(:type_of_match) { "Fight TYPE"}
        sequence(:pts_bet_l) { Faker::Number.between(0, 300_000_000)}
        sequence(:pts_bet_r) { Faker::Number.between(0, 300_000_000)}
    end
end