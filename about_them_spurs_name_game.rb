puts "Only Spurs fans allowed here!!!"
puts "What is your name?"
name = gets.chomp.downcase
puts "************************************"
puts "Do you know your Spurs?!? Yes or No?"
puts "************************************"
should_be_yes = gets.chomp.downcase
  if should_be_yes == "yes"
    puts "**********************************************"
    puts "Let's do it, #{name}. Make Spurs Nation proud!"
    puts "**********************************************"
  else
    puts "*************************************************"
    puts "You\'re here.  Your answer must have been \"Yes\"."
    puts "*************************************************"
  end

result = {right: 0, wrong:0}

puts "****************************************************************************"
puts "Before we start, who is your favorite Spur -- TP, Manu, Kawhi or Tim Duncan?"
puts "****************************************************************************"
answer_fv = gets.chomp.downcase.downcase
  case answer_fv
  when "tp"
    puts "************************************************************************"
    puts "Did you know?!? Tony Parker is the all-time assists leader of the Spurs."
    puts "************************************************************************"
  when "manu"
    puts "**************************************************************************"
    puts "Did you know?!? Manu Ginobili is the all-time steals leader of the Spurs."
    puts "**************************************************************************"
  when "kawhi"
    puts "**************************************************************************************************"
    puts "Did you know?!? Kawhi is only 1 of 3 NBA players with an All-Star appearance, Finals MVP and DPOY."
    puts "**************************************************************************************************"
  when "tim duncan"
    puts "******************************************************************************************"
    puts "Did you know?!? Tim Duncan is the all-time points, rebouds and blocks leader of the Spurs."
    puts "******************************************************************************************"
  else
    puts "***********************************"
    puts "We love all our Spurs. Don't we!?!"
    puts "***********************************"
  end
puts "********************"
puts "Alright, here we go."
puts "********************"
puts "*******************************************************************************"
puts "Question 1: Who is \"The Admiral\"? George Gervin, Tim Duncan or David Robinson"
puts "*******************************************************************************"
while answer_one = gets.chomp.downcase
  case answer_one
  when "george gervin"
    puts "Try again."
    result[:wrong] += 1
  when "tim duncan"
    puts "Nope. Try again."
    result[:wrong] += 1
  when "david robinson", "david", "robinson"
    puts "That's correct!\nGo Spurs Go!!!"
    result[:right] += 1
    break
  else
    puts "Please select between George Gervin, Tim Duncan and David Robinson."
  end
end

puts "********************************************************************************************"
puts "Question 2: Who do who refer to as \"The Iceman\"? George Gervin, Tim Duncan or Bruce Bowen."
puts "********************************************************************************************"
while answer_two = gets.chomp.downcase
  case answer_two
  when "george gervin", "george", "gervin"
    puts "************************"
    puts "Awesome!\nGo Spurs Go!!!"
    puts "************************"
    result[:right] += 1
    break
  when "tim duncan"
    puts "No. TD is Mr. Fundamental."
    result[:wrong] += 1
  when "bruce bowen"
    puts "It is not Bruce. Try again."
    result[:wrong] += 1
  else
    puts "Please select between George Gervin, Tim Duncan and Bruce Bowen."
  end
end

puts "Question 3: Who is the \"Red Mamba\"? Sean Elliott, Matt Bonner or Avery Johnson."
while answer_three = gets.chomp.downcase
  case answer_three
  when "sean elliott"
    puts "He is not the \"Red Mamba\"."
    result[:wrong] += 1
  when "matt bonner", "matt", "bonner"
    puts "*************************************************************"
    puts "Correct! Kobe Bryant gave him this monicker.\nGo Spurs Go!!!"
    puts "*************************************************************"
    result[:right] += 1
    break
  when "avery johnson"
    puts "Not Avery. Please try again."
    result[:wrong] += 1
  else
    puts "Please select between Sean Elliott, Matt Bonner and Avery Johnson."
  end
end

puts "Question 4: Who is \"L-Train\"? Will Perdue, Kawhi Leonard or LaMarcus Aldridge."
while answer_four = gets.chomp.downcase
  case answer_four
  when "will perdue"
    puts "No, not Will Perdue."
    result[:wrong] += 1
  when "kawhi leonard"
    puts "He is not L-Train. Kawhi is \"The Klaw\"."
    result[:wrong] += 1
  when "lamarcus aldridge", "lamarcus", "aldridge"
    puts "**********************************"
    puts "I am proud of you.\nGo Spurs Go!!!"
    puts "**********************************"
    result[:right] += 1
    break
  else
    puts "Please select between Will Perdue, Kawhi Leonard and LaMarcus Aldridge."
  end
end

puts "Question 5: He is my favorite Spur.  He is also know as \"El Contusion\"? Malik Rose, Dennis Rodman or Manu Ginobili."
while answer_five = gets.chomp.downcase
  case answer_five
  when "malik rose"
    puts "Sorry. It is not Malik Rose."
    result[:wrong] += 1
  when "dennis rodman"
    puts "No. Madonna's former boyfriend was known as \"The Worm\"."
    result[:wrong] += 1
  when "manu ginobili", "manu", "ginobili"
    puts "**************************************************"
    puts "(Charles Barkley voice) Ginoooooooooooobleeeeee!!!\nGo Spurs Go!!!\nThanks for playing #{name}!"
    puts "**************************************************"
    result[:right] += 1
    break
  else
    puts "Please select between Malik Rose, Dennis Rodman and Manu Ginobili."
  end
end


case result[:wrong]
  when (0..1)
     3.times do
      puts "Awesome #{name}!!!"
     end
  when (2..3)
   puts "Good job."
  when (4..5)
   puts "C\'mon man!"
  when (6..7)
   puts "Really?!?!?"
  else
   puts "Bandwagon."
end
