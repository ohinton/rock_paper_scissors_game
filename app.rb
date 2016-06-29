require ('sinatra')
require ('sinatra/reloader')
require ('rspec')
also_reload('lib/**/*.rb')
require('./lib/game')
require('pry')

get('/') do
  erb(:index)
end

get('/results') do
  @player_one_choice = params.fetch('player_one_choice')
  @player_two_choice = params.fetch('player_two_choice')
  @results = @player_one_choice.game(@player_two_choice)
  erb(:results)
end
