module Api
	module V1
		class MachinesController < ApplicationController 

			respond_to :json
			skip_before_filter :authenticate_user!

			def index
				respond_with Machine.all
			end

			def show
				respond_with Machine.find(params[:id])
			end

			def create
				respond_with Machine.create(params[:machine])
			end

			def update
				respond_with Machine.update(params[:id], params[:machine])
			end

			def destroy
				respond_with Machine.destroy(params[:id])
			end
			
			def destroy_multiple
    			respond_with Machine.destroy(params[:machines])
    		end
		end
	end
end
