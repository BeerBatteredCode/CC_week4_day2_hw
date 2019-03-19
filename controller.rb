require('sinatra')
require('sinatra/contrib/all')

require_relative('./models/game')
also_reload('./models/*')


get "/:hand1/:hand2" do
  game = Game.new(params[:hand1], params[:hand2])
  @gaming = game.rock_paper_scissors()
  @results = game.determine_winner()
  erb( :result )
end

# get "/:num1" do
#   check = Game.new(params[:num1])
#   @results = check.determine_winner()
#   erb( :result )
# end
