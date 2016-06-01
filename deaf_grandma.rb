count = 0
puts "GRANDMA: Hi there Sonny!  How are you?"
name = gets

until name == "BYE"
  if count > 19
    shesays = "ZZZZZZ"
  elsif count % 5 == 0 && count > 5
    shesays = "GRANDMA: It's getting late, dear."
  elsif name.upcase == name
    shesays = "GRANDMA: No, not since 1928!"
  else
    shesays = "GRANDMA: What's that, Sonny?"
  end
  puts shesays
  count += 1
  name = gets
end

