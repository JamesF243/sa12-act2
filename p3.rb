require 'httparty'

response = HTTParty.get("http://worldtimeapi.org/api/timezone/Europe/Prague")

if response.code == 200
  data = JSON.parse(response.body)
  timezone = data['timezone']
  datetime = DateTime.parse(data['datetime']).strftime('%Y-%m-%d %H:%M:%S')
  puts "The current time in #{timezone} is #{datetime}"
end