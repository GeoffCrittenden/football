# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

NFL_TEAMS.each do |nfl_team|
  NflTeam.find_or_create_by(name: nfl_team[1]) do |team|
    team.location     = nfl_team[0]
    team.state        = nfl_team[2]
    team.abbreviation = nfl_team[3]
  end
end

OWNERS.each do |owner|
  Owner.find_or_create_by(callsign: owner[2]) do |team_owner|
    team_owner.first_name    = owner[0]
    team_owner.last_name     = owner[1]
    team_owner.espn_nickname = owner[3]
  end
end

TEAMS.each do |team|
  Team.find_or_create_by(owner_id: Owner.find_by_callsign(team[0]).id) do |owner_team|
    owner_team.name = team[1]
  end
end

POSITIONS.each do |position|
  Position.find_or_create_by(short_name: position[1]) do |p|
    p.full_name = position[0]
  end
end
