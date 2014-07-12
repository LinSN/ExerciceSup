
task_hash = Hash.new
task ="text initial"
until task == ""
  puts "Add a task (or exit with 'Enter')"
  task = gets.chomp

  if task == ""
    break
  else
    puts "Which urgency (from 1 to 10) ?)"
    urgency = gets.chomp
    task_hash[task] = urgency
  end
end

task_hash.each do|key, value|
  string_value = "*"*value.to_i
  puts "Vos taches sont: - #{key} [Priority: #{string_value}] "
end

puts "------------------------------"
puts "What is your minimun urgency ?"
puts "------------------------------"

minimun_urgency = gets.chomp
puts "------------------------------"
task_hash_sort = task_hash.select{|key, value| value >= minimun_urgency }.sort_by {|key, value| value}.reverse

count =0
task_hash_sort.each do|tab|
  puts "-#{count} #{tab[0]} [Priority: #{tab[1]}]"
  count += 1
end