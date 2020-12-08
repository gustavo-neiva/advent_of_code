path = File.join(File.dirname(__FILE__), 'input.txt')
rdfile = File.open(path, 'r+')

def password_is_valid?(policy, password)
  max_min = policy.first.split("-")
  first_index = max_min.first.to_i - 1
  last_index = max_min.last.to_i - 1
  policy_letter = policy.last
  if password[first_index] == policy_letter
    if password[last_index] == policy_letter
      return false
    end
    return true
  elsif password[last_index] == policy_letter
    return true
  end
end

valid_passwords = []

rdfile.each do |line|
  split_line =  line.split(":")
  policy = split_line[0].split
  password = split_line[1].strip
  if password_is_valid?(policy, password)
    pp policy
    pp password
    valid_passwords << password
  end
end

puts valid_passwords.count