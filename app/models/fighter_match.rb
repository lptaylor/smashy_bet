class FighterMatch < ActiveRecord::Base
    belongs_to :fighter
    belongs_to :match
end