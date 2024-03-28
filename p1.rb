require 'httparty'

response = HTTParty.get("https://api.github.com/users/KonradIT/repos")

if response.code == 200
  repositories = JSON.parse(response.body)
  most_starred_repo = repositories.max_by { |repo| repo['stargazers_count'] }

  puts "Most Starred Repository:"
  puts "Name: #{most_starred_repo['name']}"
  puts "Description: #{most_starred_repo['description'] || 'N/A'}"
  puts "Stars: #{most_starred_repo['stargazers_count']}"
  puts "URL: #{most_starred_repo['html_url']}"
end

# This reepo I got from Capstone, couldn't end up using it for the project there, so I used it here :)
