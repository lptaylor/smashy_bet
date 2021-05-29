class Api::V1::FightersController < ApplicationController
    def index
        fighter = Fighter.find_by(id: params['fighter_id'])
        if !fighter.nil?
            render json: FighterSerializer.new(fighter)
        else
            render json: {status: 401}
        end
    end
end