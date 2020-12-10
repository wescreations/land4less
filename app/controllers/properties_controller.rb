class PropertiesController < ApplicationController

  before_action :authenticate_user!, :only => [:new, :delete, :destroy, :create, :update, :edit]

	layout "application"

	def new
		@property = Property.new
	end

	def create
		@property = Property.new(properties_params)
		if @property.save
			flash[:notice] = "Property Created Successfully!"
			redirect_to(properties_path)
		else
			flash[:notice] = "oof, looks like it didn't work."
			render("new")
		end
	end

	def edit
		@property = Property.find(params[:id])
	end

	def update
		@property = Property.find(params[:id])
				if @property.update_attributes(properties_params)
			flash[:notice] = "Required Fields Prevented Save!"
			redirect_to(properties_path)
		else
			redirect_to("new")
		end
	end

	def index
		@q = Property.ransack(params[:q])
		@property = @q.result(distinct: true).paginate(page: params[:page]).all


	end

	def show
		@property = Property.find(params[:id])
		@q = Property.ransack(params[:q])
		@prop = @q.result(distinct: true).all
	end

	def delete
		@property = Property.find(params[:id])
	end

	def destroy
		if @property = Property.destroy(params[:id])
			flash[:notice] = "Property Destroyed Successfully!"
			redirect_to(properties_path)
		else
			render("new")
		end
	end

	def properties_params
		params.require(:property).permit(
			:name,
			:price,
			:lat,
			:long,
			:address_1,
			:city,
			:state,
			:zip,
			:size,
			:apn,
			:monthly_payment,
			:price_group,
			:acre,
			:description,
			:main_photo,
			photos: []
		)
	end

end
