def mac_cpu
  puts "What is in your Mac?"
  puts "1. Intel/x86_64"
  puts "2. Silicon/ARM64"
  puts "3. Other"
  cpu = gets.chomp.to_i
  cpu
end

def checker(cpu)
  case cpu
  when 1
    puts "Selected Intel/x86_64..."
    Dir.chdir("./intel")
    system("sh intel.sh")
  when 2
    puts "Selected Silicon/ARM64..."
    Dir.chdir("./silicon")
    system("sh silicon.sh")
  when 3
    puts "The fuck kinda Mac are you on, a PowerMac G3 XD."
    exit 0
  else
    puts "Invalid option, please choose again."
    checker(mac_cpu)
  end
end

system("clear")
cpu = mac_cpu()
checker(cpu)
