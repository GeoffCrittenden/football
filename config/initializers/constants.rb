GOOGLE_DRIVE_CONFIG = Football::CONFIG.google_drive_info.config_file

LEAGUE_ID = Football::CONFIG.league_info.league_id

OWNERS = Football::CONFIG.league_info.owners

TEAMS = Football::CONFIG.league_info.teams

NFL_TEAMS = [
  ['Green Bay',     'Packers',    'WI', 'GB'],
  ['Chicago',       'Bears',      'IL', 'CHI'],
  ['Detroit',       'Lions',      'MI', 'DET'],
  ['Minnesota',     'Vikings',     nil, 'MIN'],
  ['New York',      'Giants',     'NY', 'NYG'],
  ['Washington',    'Redskins',   'DC', 'WSH'],
  ['Philadelphia',  'Eagles',     'PA', 'PHI'],
  ['Dallas',        'Cowboys',    'TX', 'DAL'],
  ['Atlanta',       'Falcons',    'GA', 'ATL'],
  ['New Orleans',   'Saints',     'LA', 'NO'],
  ['Carolina',      'Panthers',    nil, 'CAR'],
  ['Tampa Bay',     'Buccaneers', 'FL', 'TB'],
  ['Arizona',       'Cardinals',   nil, 'ARI'],
  ['St. Louis',     'Rams',       'MO', 'STL'],
  ['Seattle',       'Seahawks',   'WA', 'SEA'],
  ['San Francisco', '49ers',      'CA', 'SF'],
  ['Pittsburgh',    'Steelers',   'PA', 'PIT'],
  ['Cleveland',     'Browns',     'OH', 'CLE'],
  ['Cincinnati',    'Bengals',    'OH', 'CIN'],
  ['Baltimore',     'Ravens',     'MD', 'BAL'],
  ['Buffalo',       'Bills',      'NY', 'BUF'],
  ['New York',      'Jets',       'NY', 'NYJ'],
  ['Miami',         'Dolphins',   'FL', 'MIA'],
  ['New England',   'Patriots',    nil, 'NE'],
  ['Indianapolis',  'Colts',      'IN', 'IND'],
  ['Houston',       'Texans',     'TX', 'HOU'],
  ['Jacksonville',  'Jaguars',    'FL', 'JAC'],
  ['Tennessee',     'Titans',      nil, 'TEN'],
  ['Denver',        'Broncos',    'CO', 'DEN'],
  ['San Diego',     'Chargers',   'CA', 'SD'],
  ['Oakland',       'Raiders',    'CA', 'OAK'],
  ['Kansas City',   'Chiefs',     'MO', 'KC']
]

POSITIONS = [
  ['Quarterback',           'QB'],
  ['Running Back',          'RB'],
  ['Wide Receiver',         'WR'],
  ['Tight End',             'TE'],
  ['Defense/Special Teams', 'D/ST'],
  ['Kicker',                'K']
]
