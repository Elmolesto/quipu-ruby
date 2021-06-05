class Day4
  attr_reader :passports

  REQUIRED_KEYS = 7

  RULES = {
    byr: /^(19[2-9][0-9]|200[0-2])$/,
    iyr: /^20(1[0-9]|20)$/,
    eyr: /^20(2[0-9]|30)$/,
    hgt: /^(1([5-8][0-9]|9[0-3])cm|(59|6[0-9]|7[0-6])in)$/,
    hcl: /^#(\d|[a-f]){6}$/,
    ecl: /^(amb|blu|brn|gry|grn|hzl|oth)$/,
    pid: /^\d{9}$/
  }.freeze

  def initialize(passports_data)
    @passports = data_to_passports(passports_data)
  end

  def part1
    @passports.count do |passport|
      valid_keys?(passport)
    end
  end

  def part2
    @passports.count do |passport|
      valid_values?(passport)
    end
  end

  private

  def valid_keys?(passport)
    passport_keys = passport.keys - [:cid]
    passport_keys.size == REQUIRED_KEYS
  end

  def valid_values?(passport)
    RULES.all? do |key, pattern|
      next if passport[key].nil?
      passport[key].match?(pattern)
    end
  end

  def data_to_passports(data)
    data.split("\n\n").map { |line| line.split.map { |key_value| key_value.split(':') }.to_h.transform_keys(&:to_sym) }
  end
end

if $PROGRAM_NAME == __FILE__

  input_file = File.read(File.join(File.dirname(__FILE__), './input.txt'))
  day4 = Day4.new(input_file)

  # Part 1
  puts day4.part_1

  # Part 2
  puts day4.part_2

end
