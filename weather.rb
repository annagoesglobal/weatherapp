require 'barometer'


puts "Where are you located? 5-Digit Zip"
location = gets.chomp

barometer = Barometer.new(location)
weather = barometer.measure

#variables in forecast loop

today = Time.now.strftime("%d").to_i
tomorrow = today + 1

#print forecast results

weather.forecast.each do |forecast|
  day = forecast.starts_at.day

    if day == today
      dayName = 'Today'
    else
      dayName = forecast.starts_at.strftime('%A')
      puts dayName + " count on a " + forecast.icon + " day with a high of " + forecast.high.f.to_s + " and a low of " + forecast.low.f.to_s + "."
    end # if statement
  end #for loop
