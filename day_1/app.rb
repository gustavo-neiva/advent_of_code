path = File.join(File.dirname(__FILE__), 'input.txt')
rdfile = File.open(path, 'r+')

input_numbers = []

rdfile.each do |line|
  input_numbers << line.to_i
end

answer = 0
input_numbers.each_with_index do |number, index|
  second_row = input_numbers.drop(index + 1)
  second_row.each_with_index do |second_row_number, second_row_index|
    third_row = input_numbers.drop(second_row_index + index + 1)
    third_row.each do |third_row_number|
      sum = number + second_row_number + third_row_number
      if sum == 2020
        puts number
        puts second_row_number
        puts third_row_number
        answer =number * second_row_number * third_row_number
        puts answer
        return answer
      end
    end
  end
end