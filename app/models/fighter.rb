class Fighter < ApplicationRecord
    has_many :fighter_matches
    has_many :matches, :through => :fighter_matches
    has_many :fighter_teams
    has_many :teams, :through => :fighter_teams
end
