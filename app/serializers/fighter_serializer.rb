class FighterSerializer
    include JSONAPI::Serializer

    attributes :name, :character, :wins, :losses, :matches, :points_bet_on, :points_won, :points_lost, :kills, :deaths, :suicides, :critical_failures, :streak, :smash_rating, :total_jail_time, :tier

    attribute :win_percentage do |o|
        if o.losses == 0 && o.wins == 0
            0
        elsif o.wins > 0 && o.losses == 0
            100
        else
            (o.wins/o.losses)
        end
    end
end