class Day1
  def initialize(entries)
    @entries = entries
  end

  def part1
    entries_multiplied(2, @entries)
  end

  def part2
    entries_multiplied(3, @entries)
  end

  private

  def entries_multiplied(value, input)
    input.combination(value) { |c| return c.reduce(:*) if c.sum == 2020 }
  end
end


if $PROGRAM_NAME == __FILE__
  input_data = File.read(File.join(File.dirname(__FILE__), './input.txt')).lines.map(&:to_i)
  day1 = Day1.new(input_data)

  # Part 1
  puts day1.part1

  # Part 2
  puts day1.part2
end
