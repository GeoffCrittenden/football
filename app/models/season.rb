class Season < ActiveRecord::Base
  class << self
    def season_id
      Time.now.month < 6 ? Time.now.year - 1 : Time.now.year
    end
  end
end
