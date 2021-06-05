class Day3

  SLOPES = [[1, 1], [3, 1], [5, 1], [7, 1], [1, 2]].freeze

  def initialize(grid)
    @grid = grid.split("\n")
  end

  def part1
    count_trees_by_slope(@grid, SLOPES[1])
  end

  def part2
    trees = SLOPES.map do |slope|
      count_trees_by_slope(@grid, slope)
    end

    trees.inject(:*)
  end

  private

  def count_trees_by_slope(grid, slope)
    right = slope[0]
    down = slope[1]
    (0...grid.size).step(down).count do |y|
      row = grid[y]
      x = (y * right / down) % row.size
      row[x] == '#'
    end
  end
end

if $PROGRAM_NAME == __FILE__

  input_file = File.read(File.join(File.dirname(__FILE__), './input.txt'))
  day3 = Day3.new(input_file)

  # Part 1
  puts day3.part1

  # Part 2
  puts day3.part2
end
