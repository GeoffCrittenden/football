module Espn
  API_URL  = 'http://games.espn.com'
  API_PATH = '/ffl/api/v2'
  BASE_URL = 'http://games.espn.com/ffl'
  ENDPOINTS = {
    'league_schedules' => '/leagueSchedules',
    'league_settings'  => '/leagueSettings',
    'live_scoring'     => '/livescoring',
    'message_board'    => '/messageboard',
    'player_info'      => '/playerInfo',
    'player_news'      => '/player/news',
    'polls'            => '/polls',
    'recent_activity'  => '/recentActivity',
    'roster_info'      => '/rosterInfo',
    'schedule'         => '/schedule',
    'scoreboard'       => '/scoreboard',
    'status'           => '/status',          # current time
    'stories'          => '/stories',         # ESPN articles
    'teams'            => '/teams',
  }.freeze

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

  class << self
    def api_base_url
      "#{API_URL}#{API_PATH}"
    end

    def player_info_url(player_id)
      "#{api_base_url}#{ENDPOINTS['player_info']}?playerId=#{player_id}"
    end

    def roster_info_url(team_id)
      "#{api_base_url}#{ENDPOINTS['roster_info']}?leagueId=#{LEAGUE_ID}&teamIds=#{team_id}"
    end

    def teams_url
      "#{api_base_url}#{ENDPOINTS['teams']}?leagueId=#{LEAGUE_ID}"
    end

    def standings_url
      "#{API_URL}#{API_PATH}/standings?leagueId=#{LEAGUE_ID}"
    end

    def scoreboard_url
      "#{BASE_URL}/scoreboard?leagueId=#{LEAGUE_ID}&seasonId=#{Season.season_id}"
    end

    def roster_url
      "#{BASE_URL}/clubhouse?leagueId=#{LEAGUE_ID}&teamId={1}&seasonId=#{Season.season_id}"
    end

    def fa_url
      "#{BASE_URL}/freeagency?leagueId=#{LEAGUE_ID}&seasonId=#{Season.season_id}"
    end

    def scoring_url
      "#{BASE_URL}/leaders?leagueId=#{LEAGUE_ID}&teamId={1}&scoringPeriodId={2}"
    end

    def waiver_url
      "#{BASE_URL}/tools/waiverorder?leagueId=#{LEAGUE_ID}"
    end

    def settings_url
      "#{BASE_URL}/leaguesetup/settings?leagueId=#{LEAGUE_ID}"
    end
  end
end
