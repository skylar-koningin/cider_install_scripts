def operating_system
  puts "What operating system are you on?"
  puts "1. Windows"
  puts "2. MacOS"
  puts "3. Linux"
  puts "4. Other"
  os = gets.chomp.to_i
  os
end

def checker(os)
  case os
  when 1
    puts "Selected Windows..."
    Dir.chdir("./windows")
    system("powershell.exe -File .\\windows.ps1")
  when 2
    puts "Selected MacOS..."
    Dir.chdir("./macos")
    system("ruby macos.rb")
  when 3
    puts "Selected Linux..."
    Dir.chdir("./linux")
    system("ruby linux.rb")
  when 4
    puts "These scripts currently do not support other operating systems."
    puts "If you would us to add support, look at CONTRIBUTING.md to see how you can contribute or send us ideas!"
    puts "Have a nice day!"
    exit 0
  else
    puts "Invalid option, please choose again."
    checker(operating_system)
  end
end

os = operating_system()
checker(os)
