require('sinatra')
require('sinatra/reloader')
require('./lib/queen_attack')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/queen_move') do
  @queen_position = (params.fetch('queen_move')).split("")
  @enemy_position = (params.fetch('enemy')).split("")
  @move = (@queen_position).queen_attack?(@enemy_position)
  erb(:queen_move)
end
