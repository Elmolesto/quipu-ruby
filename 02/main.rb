def valid_password_1?(password: '', letter: '', min: 0, max: 0)
  char_count = password.count(letter)
  (min..max).cover?(char_count)
end

def valid_password_2?(password: '', letter: '', min: 0, max: 0)
  min_index = min - 1
  max_index = max - 1
  (password[min_index] == letter) ^ (password[max_index] == letter)
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

if $PROGRAM_NAME == __FILE__

  input_file = File.read(File.join(File.dirname(__FILE__), './input.txt'))
  input_data = input_file.lines.map do |line|
    string_to_password(line)
  end

  # Part 1
  puts input_data.count{ |password| valid_password_1?(password) }

  # Part 2
  puts input_data.count { |password| valid_password_2?(password) }
end
