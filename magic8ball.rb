require 'colorize'

magic_eight_ball = [
"Not likely.",
"Outcome looks horrible.",
"Why would you even ask that?",
"Sorry, what? I wasn't listening.",
"Totally.",
"Outcome looks good.",
"Ask again when I'm in the mood.",
"Absolutely, 100% yes!",
"Oh, no. Nononono no. NO!"
]

magic_eight_clone = magic_eight_ball.clone

at_exit do
  puts "I saw this coming."
end

puts "Welcome to the Magic Eight Ball! \nI'm not magic nor a ball, but you get the idea. \nOr type 'quit' if you're done. It's ok, I understand."
while true
  puts "Please ask a question."
  print ">"
  input = gets.strip
  if input.downcase == "quit"
    exit(0)
  elsif input.downcase == "show me your answers"
    puts "That's now a question, but ok.\n#{magic_eight_ball}"
  elsif input.include?("?") == false
    puts "I only take questions."
  elsif input.downcase == "what does the fox say?"
    puts "Ring-ding-ding-ding-dingeringeding!"
  else
    remove = magic_eight_clone.sample
    if remove == nil
      puts "Sorry, I've got nothing more to say."
      print ">"
      gets
      puts "Seriously, I'm all done."
      print ">"
      gets
      puts "No really, those were all my answers."
      print ">"
      gets
      puts "Fine, have it your way"
      magic_eight_clone = magic_eight_ball.clone
    else magic_eight_clone.delete(remove)
      puts remove
    end
  end
end
