path = File.join(File.dirname(__FILE__), 'input.txt')
trees_line = []
rdfile = File.open(path, 'r+').each { |l| trees_line << l }

def tree_finder(trees_input, right = 3, down = 1)
  trees = 0
  position = -1 * right
  trees_input.each_with_index do |line, index|
    if index % down == 0
      position += right
      line_length = line.length
      i = position % (line_length - 1)
      square = line[i]
      if square == "#"
        trees += 1
      end
    end
  end
  puts trees
  return trees
end

tree_finder(trees_line, 5, 1)
# answ = tree_finder(trees_line) * tree_finder(trees_line, 1, 1) * tree_finder(trees_line, 5, 1) * tree_finder(trees_line,7 ,1) * tree_finder(trees_line, 1 , 2)
# puts answ
