# track the number of Grandma's responses
count = 1
puts "GRANDMA: Hi there Sonny!  How are you?"

loop do
  name = gets  # put response into name
  break if name.chomp == "BYE"   # stop if BYE is entered
  name = name.chomp.gsub(/\W|\d/, '')   # drop trailing newline, numbers, and punctuation
  if count > 19            # after twenty times, Grandma's had enough
    shesays = "ZZZZZZ"
  elsif ['JESUS','GOD'].include? name    # no blasphemy!
    shesays = "You should never take the Lord's name in vain!"
  elsif ['DAMN','SHIT'].include? name      # no cursing!
    shesays = "Such language!"
  elsif count % 5 == 0 && count > 0   # Grandma is easily bored
    shesays = "GRANDMA: It's getting late, dear."
  elsif name != '' && name.upcase == name     # she can hear shouting
    shesays = "GRANDMA: No, not since 1928!"
  else                            # but nothing else
    shesays = "GRANDMA: What's that, Sonny?"
  end
  puts shesays
  count += 1
end

