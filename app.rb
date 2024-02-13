require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"

# Need this configuration for better_errors
use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')

get("/") do
  erb(:rules)
end

get("/rock") do
  move1 = ["rock", "paper", "scissors"]
  @they1 = move1.sample
  erb(:rock)
end

get("/paper") do
  move2 = ["rock", "paper", "scissors"]
  @they2 = move2.sample
  erb(:paper)
end

get("/scissors") do
  move3 = ["rock", "paper", "scissors"]
  @they3 = move3.sample
  erb(:scissors)
end
