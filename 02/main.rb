class Day2
  def initialize(data)
    @passwords = data_to_passwords(data)
  end

  def part1
    @passwords.count { |password| valid_password_1?(password) }
  end

  def part2
    @passwords.count { |password| valid_password_2?(password) }
  end

  private

  def valid_password_1?(password: '', letter: '', min: 0, max: 0)
    char_count = password.count(letter)
    (min..max).cover?(char_count)
  end

  def valid_password_2?(password: '', letter: '', min: 0, max: 0)
    min_index = min - 1
    max_index = max - 1
    (password[min_index] == letter) ^ (password[max_index] == letter)
  end

  def data_to_passwords(data)
    data.lines.map do |line|
      string_to_password(line)
    end
  end

  def string_to_password(data)
    regex = /(?<min>\d+)-(?<max>\d+) (?<letter>\w): (?<password>\w+)/
    match = data.match(regex)
    {
      letter: match[:letter],
      password: match[:password],
      min: match[:min].to_i,
      max: match[:max].to_i
    }
  end
end

if $PROGRAM_NAME == __FILE__

  input_data = File.read(File.join(File.dirname(__FILE__), './input.txt'))
  day2 = Day2.new(input_data)

  # Part 1
  puts day2.part1

  # Part 2
  puts day2.part2
end
