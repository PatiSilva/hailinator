require "twitter"
Twitter.configure do |config|
  config.consumer_key = "ce32LXzNTtCThAF6XrUWvA"
  config.consumer_secret = "0NZGgfYEQXtMLTabikA3ydXHgCK1APmwjXvylEhOrbE"
  config.oauth_token = "1498117129-DctkVKK1RKl9UaeZnBdDRA7DTyv4voVreoCyEx3"
  config.oauth_token_secret = "g5Shii7XmuEUl46OTry0Obrma2LX2gwEs10SeehGao"
end
Twitter.home_timeline

Twitter.search("hail", :result_type => "recent").results.map do |tweet|
   puts "#{tweet.from_user}: #{tweet.text}"
end