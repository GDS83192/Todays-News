require_relative './lib/todays-news/version'

Gem::Specification.new do |s|
  s.name        = 'todays-news'
  s.version     = TodaysNews::VERSION
  s.date        = '2016-01-13'
  s.summary     = "Todays news"
  s.description = "Gives info about recent news"
  s.authors     = ["Graham Squires"]
  s.email       = 'graham.squires3@gmail.com'
  s.files       = ["lib/todays-news.rb", "lib/todays-news/cli.rb",  "lib/todays-news/story.rb", "config/environment.rb"]
  s.homepage    = 'http://rubygems.org/gems/todays-sports'
  s.license     = 'MIT'
  s.executables << 'todays-news'

  s.add_development_dependency "bundler", "~> 1.10"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "rspec", ">= 0"
  s.add_development_dependency "nokogiri", ">= 0"
  s.add_development_dependency "pry", ">= 0"
end
