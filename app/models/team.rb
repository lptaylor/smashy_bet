class Team < ApplicationRecord
    has_many :fighter_teams
    has_many :fighters, :through => :fighter_teams
end
