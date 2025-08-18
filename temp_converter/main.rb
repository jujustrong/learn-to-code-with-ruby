# This project converts Celsius to Fahrenheit and vice versa
# It will keep asking until the user quits

def ask(prompt)
  print "#{prompt}"
  gets.chomp
end

def c_to_f(c)
  (c * 9.0/5) + 32
end

def f_to_c(f)
  (f - 32) * (5.0/9)
end
  
def c_to_k(c)
  c + 273.15
end

def k_to_c(k)
  k - 273.15
end

def temp_converter

  loop do
    temp = ask("Please enter a temperature: ").to_f
    scale = ask("Convert to (C or F): ").downcase

    if scale == "c"
      result = f_to_c(temp)
      puts "#{temp}°F = #{result.round(1)}°C "
    elsif scale == "f"
      result = c_to_f(temp)
      puts "#{temp}°C = #{result.round(1)}°F "
    else
      puts "Please enter 'C', 'F'"
      sleep(1)
      system('clear')
    end

    continue = ask("Do you want to convert another? (Y/N): ").downcase
    system('clear')
    break if continue != "y"
    
  end

end

temp_converter