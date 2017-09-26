@commands = ['mv', 'cp', 'mkdir', 'ls', 'rm']

def man(cmd)
  puts `man #{cmd}`
end

def cmd_line_menu
  puts "Select an option to see output"

  @commands.each_with_index do |cmd, i|
    puts "#{i + 1}: #{cmd}"
  end

  selection = gets.to_i

  if (selection > 0 && selection <= @commands.length)
    element = @commands[selection - 1]
    puts element
    man(element)
  else
    puts 'Invalid selection.  Try again'
    puts
    cmd_line_menu
  end
end

def search
  puts "Type a cmd to search"
  cmd = gets.strip
  man(cmd)
end

def display_menu
  puts "======================="
  puts "MAIN MENU"
  puts "1: Command Line"
  puts "2: Search"
  puts "3: Exit"
  puts "======================="
  puts
  gets.to_i
end

def menu_options(choice)
  case choice
  when 1
    cmd_line_menu
  when 2
    search
  when 3
    exit
  else
    puts "Chose a valid option 1,2,3"
  end
end


while true
  choice = display_menu
  menu_options(choice)
end