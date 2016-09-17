def print_timeline(timeline)
  timeline.each do |tweet|  # o puedo usar each_index |tweet, indice|
    puts
    puts "@#{tweet[:username]} says: "
    puts "  #{tweet[:message]}"
    puts "at #{tweet[:time]}, #{tweet[:date]}"
    puts
  end
end

def ask_tweet
  puts "Usuario que publica: "
  puts "(Por favor introduzca solo ENTER para salir)"
  user = gets.chomp
  if user != ""
    puts "Mensaje a publicar: "
    msg = gets.chomp
    t = Time.now()
    {username: user, message: msg, date: t.strftime('%d/%m/%Y'),
      time: t.strftime('%I:%M%p')}
  else
    return false
  end
end

def post_tweet!(tweet, timeline)
  timeline.push(tweet)
end

def main()
  timeline = []
  loop do
    tweet = ask_tweet
    break if tweet == false
    post_tweet!(tweet, timeline)
    print_timeline(timeline)
  end
end

main()
