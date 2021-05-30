require 'rails_helper'

RSpec.describe Match, type: :model do
  it 'exists' do
    match = Match.new(date: '2021-01-01', vod_link: 'https://www.twitch.tv/videos/1038649472?t=04h16m47s', description: "testmatchdesc", type_of_match: 'testtype', stage: 'teststage', pts_bet_l: 200_000, pts_bet_r: 300_000)

    expect(match).to be_a(Match)
  end
end
