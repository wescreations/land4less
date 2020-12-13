class PropertiesController < ApplicationController

  before_action :authenticate_user!, :only => [:new, :delete, :destroy, :create, :update, :edit]

	layout "application"

  respond_to :html, :json

	def new
		@property = Property.new
    respond_modal_with @property
	end

	def create
		@property = Property.new(properties_params)
		if @property.save
			flash[:notice] = "Property Created Successfully!"
      redirect_to(properties_path)
		else
			flash[:error] = @property.errors.full_messages.to_sentence
			render("new")
		end
	end

	def edit
		@property = Property.find(params[:id])
    respond_modal_with @property
	end

	def update
		@property = Property.find(params[:id])
		if @property.update_attributes(properties_params)
      flash[:notice] = "Property Updated Successfully!"
      redirect_to(properties_path)
		else
      flash[:error] = @property.errors.full_messages.to_sentence
			render("new")
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
    @related_properties = Property.where(:state => @property.state, :for_sale => @property.for_sale)

	end

	def delete
		@property = Property.find(params[:id])
    respond_modal_with @property
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
      :for_sale,
			photos: []
		)
	end

end
