class CarController < ApplicationController

	get '/' do
		@cars = Car.all

		@cars.to_json
	end

	post '/' do	

		@cars = Car.new
		@cars.manufacturer = params[:manufacturer]
		@cars.model = params[:model]
		@cars.color = params[:color]
		@cars.price = params[:price]
		@cars.awd = params[:awd]
		@cars.save

		'saved'
	end	

	put '/:id' do
		@cars = Car.find_by(id: params[:id])
		@cars.manufacturer = params[:manufacturer]
		@cars.model = params[:model]
		@cars.color = params[:color]
		@cars.price = params[:price]
		@cars.awd = params[:awd]
		@cars.save

		'updated'
	end	

	delete '/:id' do
		@cars = Car.find_by(id: params[:id])
		@cars.delete
		'deleted'
	end	

end	