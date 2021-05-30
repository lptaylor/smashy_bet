class Match < ApplicationRecord
    has_many :fighter_matches
    has_many :fighters, :through => :fighter_matches
end
