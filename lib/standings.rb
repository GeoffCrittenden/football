class Standings
  attr_reader :divisions

  def initialize(info)
    divisions = [
      DivisionStandings.new(info[0..6]),
      DivisionStandings.new(info[7..13]),
      DivisionStandings.new(info[14..-1]),
    ]
  end
end
