class CarController < ApplicationController

	get '/' do
		erb :Home
	end	

	get '/info2' do
		@cars = Car.all
		@cars.to_json
	end

	get '/info' do
		@cars = Car.all
		@cars.to_json

		erb :Cars
	end

	post '/' do	

		@cars = Car.new
		@cars.manufacturer = params[:manufacturer]
		@cars.model = params[:model]
		@cars.color = params[:color]
		@cars.price = params[:price]
		@cars.awd = params[:awd]
		@cars.save
		@cars
	end	

	delete '/:id' do
		@cars = Car.find_by(id: params[:id])
		@cars.delete
		'deleted'
	end	

	put '/:id' do
		@cars = Car.find_by(id: params[:id])
		@cars.manufacturer = params[:manufacturer]
		@cars.model = params[:model]
		@cars.color = params[:color]
		@cars.price = params[:price]
		@cars.awd = params[:awd]
		@cars.save
	end	

end	