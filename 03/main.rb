def count_trees_by_slope(grid, slope)
  right = slope[0]
  down = slope[1]
  (0...grid.size).step(down).count do |y|
    row = grid[y]
    x = (y * right / down) % row.size

    row[x] == '#'
  end
end

if $PROGRAM_NAME == __FILE__

  input_file = File.read(File.join(File.dirname(__FILE__), './input.txt'))
  input_grid = input_file.split("\n")

  # Part 1
  puts count_trees_by_slope(input_grid, [3, 1])

  # Part 2
  slopes = [[1, 1], [3, 1], [5, 1], [7, 1], [1, 2]]
  trees = slopes.map do |slope|
    count_trees_by_slope(input_grid, slope)
  end

  puts trees.inject(:*)

end
