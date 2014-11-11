module Api
	module V1
		class CustomersController < ApplicationController 

			respond_to :json
			skip_before_filter :authenticate_user!

			def index
				respond_with Customer.all
			end

			def show
				respond_with Customer.find(params[:id])
			end

			def create
				respond_with Customer.create(params[:customer])
			end

			def update
				respond_with Customer.update(params[:id], params[:customer])
			end

			def destroy
				respond_with Customer.destroy(params[:id])
			end
		end
	end
end
