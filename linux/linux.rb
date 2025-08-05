def package_manager
  puts "What package manager is on your Linux Distro?"
  puts "1. apt"
  puts "2. dnf"
  puts "3. eopkg"
  puts "4. nix"
  puts "5. pacman"
  puts "6. zypper"
  puts "7. Other"
  pm = gets.chomp.to_i
  pm
end

def checker(pm)
  case pm
  when 1
    puts "Selected apt..."
    Dir.chdir("./apt")
    system("ruby apt.rb")
  when 2
    puts "Selected dnf..."
    Dir.chdir("./dnf")
    system("ruby dnf.rb")
  when 3
    puts "Selected eopkg..."
    Dir.chdir("./eopkg")
    system("ruby eopkg.rb")
  when 4
    puts "Selected nix..."
    Dir.chdir("./nix")
    system("ruby nix.rb")
  when 5
    puts "Selected pacman..."
    Dir.chdir("./pacman")
    system("ruby pacman.rb")
  when 6
    puts "Selected zypper..."
    Dir.chdir("./zypper")
    system("ruby zypper.rb")
  when 7
    puts "These scripts currently do not support other operating systems."
    puts "If you would us to add support, look at CONTRIBUTING.md to see how you can contribute or send us ideas!"
    puts "Have a nice day!"
    exit 0
  else
    puts "Invalid option, please choose again."
    checker(package_manager)
  end
end

system("clear")
puts "Selected Linux..."
pm = package_manager()
checker(pm)
