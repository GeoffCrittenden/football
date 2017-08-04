class DivisionStandings
  attr_reader :division_name

  def initialize(info)
    @info          = info
    @division_name = info.first.first
  end

  def team_names
    @info[2..5].map(&:first)
  end

  def longest_team_name
    team_names.map(&:length).sort.last
  end

  def padded_team_name(team_name)
    team_name + (' ' * padding_to_add(team_name))
  end

  def padding_to_add(team_name)
    longest_team_name - team_name.length
  end

  def padded_integer(integer)
    integer.length == 1 ? " #{integer}" : integer
  end

  def non_leading_zero_win_pct(win_pct)
    ('%.3f' % win_pct)[1..-1]
  end

  def header_row(raw_row)
    [padded_team_name(raw_row.first),
     padded_integer(raw_row[1]),
     padded_integer(raw_row[2]),
     padded_integer(raw_row[3]),
     " #{raw_row[4]}",
     raw_row.last]
  end

  def team_row(raw_row)
    [padded_team_name(raw_row.first),
     padded_integer(raw_row[1]),
     padded_integer(raw_row[2]),
     padded_integer(raw_row[3]),
     non_leading_zero_win_pct(raw_row[4]),
     padded_integer(raw_row[5])]
  end

  def team_rows
    @info[2..5].map { |raw_row| team_row(raw_row) }
  end

  def output_rows
    output = [@info.first, header_row(@info[1])]
    team_rows.each { |row| output << row }
    output << (@info[6].nil? ? [''] : @info[6])
    output
  end
end
