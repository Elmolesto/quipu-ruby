def entries_multiplied(value, input)
  input.combination(value) { |c| return c.reduce(:*) if c.sum == 2020 }
end

if $PROGRAM_NAME == __FILE__
  input_data = File.read(File.join(File.dirname(__FILE__), './input.txt')).lines.map(&:to_i)

  # Part 1
  puts entries_multiplied(2, input_data)

  # Part 2
  puts entries_multiplied(3, input_data)
end
