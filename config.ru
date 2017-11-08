require 'sinatra/base'

require'./controllers/ApplicationController'
require'./controllers/CarsController'

require './models/Car'

map('/') {run ApplicationController}
map('/cars') {run CarController}