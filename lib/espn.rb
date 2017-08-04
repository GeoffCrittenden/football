module Espn
  class << self
    def standings_url
      "#{BASE_URL}/standings?leagueId=#{LEAGUE_ID}&seasonId=#{season_id}"
    end

    def scoreboard_url
      "#{BASE_URL}/scoreboard?leagueId=#{LEAGUE_ID}&seasonId=#{season_id}"
    end

    def roster_url
      "#{BASE_URL}/clubhouse?leagueId=#{LEAGUE_ID}&teamId={1}&seasonId=#{season_id}"
    end

    def fa_url
      "#{BASE_URL}/freeagency?leagueId=#{LEAGUE_ID}&seasonId=#{season_id}"
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
