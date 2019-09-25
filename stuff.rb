module Espn
  LEAGUE_ID = '29490'
  SEASON_ID = '2018'
end

uri = URI.parse("#{API_URL}#{API_PATH}#{ENDPOINTS['polls']}?leagueId=#{LEAGUE_ID}&seasonId=#{SEASON_ID}")
uri = URI.parse("#{API_URL}#{API_PATH}#{ENDPOINTS['teams']}?leagueId=#{LEAGUE_ID}&seasonId=#{SEASON_ID}")
uri = URI.parse("#{API_URL}#{API_PATH}#{ENDPOINTS['stories']}?leagueId=#{LEAGUE_ID}&seasonId=#{SEASON_ID}")
uri = URI.parse("#{API_URL}#{API_PATH}#{ENDPOINTS['recent_activity']}?leagueId=#{LEAGUE_ID}&seasonId=#{SEASON_ID}")


uri = URI.parse("#{API_URL}#{API_PATH}#{ENDPOINTS['scoreboard']}?leagueId=#{LEAGUE_ID}&seasonId=#{SEASON_ID}&scoringPeriodId=1")
response = Net::HTTP.get_response(uri)
info = JSON.parse(response.body)
matchup_info = info['scoreboard']['matchups']
matchups = matchup_info.map { |matchup_info| Matchup.new(matchup_info) }

class Matchup
  attr_reader :matchup_info, :winner, :loser

  def initialize(info)
    @matchup_info = info
    process_matchup
  end

  private

  def home_winner?
    matchup_info['winner'] == 'home'
  end

  def process_matchup
    determine_winner
    determine_loser
  end

  def determine_winner
    @winner = Team.new(matchup_info['teams'].detect { |team| home_winner? ? team['home'] : !team['home'] })
  end

  def determine_loser
    @loser = (matchup_info['teams'] - [winner]).first
  end
end

class Team
  attr_reader :team_info

  def initialize(info)
    @team_info = info    
  end

  def name
    "#{team_info['team']['teamLocation']} "\
    "#{team_info['team']['teamNickname']}"
  end
end
