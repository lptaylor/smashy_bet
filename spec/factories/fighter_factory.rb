FactoryBot.define do
    factory :fighter do
        sequence(:name) { Faker::GreekPhilosophers.name }
        sequence(:character) { Faker::Games::SuperSmashBros.fighter }
        sequence(:wins) { Faker::Number.between(0, 30)}
        sequence(:losses) { Faker::Number.between(0, 30)}
        sequence(:points_bet_on) { Faker::Number.between(0, 300_000_000)}
        sequence(:points_lost) { Faker::Number.between(0, 300_000_000)}
        sequence(:points_won) { Faker::Number.between(0, 300_000_000)}
        sequence(:kills) { Faker::Number.between(0, 300)}
        sequence(:deaths) { Faker::Number.between(0, 300)}
        sequence(:suicides) { Faker::Number.between(0, 300)}
        sequence(:critical_failures) { Faker::Number.between(0, 30)}
        sequence(:streak) { Faker::Number.between(0, 30)}
        sequence(:smash_rating) { Faker::Number.between(0, 30)}
        sequence(:total_jail_time) { Faker::Number.decimal(l_digits: 2) }
        sequence(:tier) { 'C' }
    end
end