class CustomersController < ApplicationController
  # GET /customers
  # GET /customers.json
  def index
    @search = Customer.search(params[:q])
    @customers = @search.result.paginate( :per_page => 1, :page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
    @customer = Customer.find(params[:id])
    @machine = Machine.new
    @machines = @customer.machines
    @certificate = Certificate.new
    @certificates = @customer.certificates

    respond_to do |format|
      format.html # show.html.erb
      format.js
    end
  end

  # GET /customers/new
  # GET /customers/new.json
  def new
    @customer = Customer.new

    respond_to do |format|
      format.html # new.html.erb
      format.js
    end
  end


  # GET /customers/1/edit
  def edit
    @customer = Customer.find(params[:id])
  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = Customer.new(params[:customer])

    respond_to do |format|
      if @customer.save
         
        format.html { redirect_to @customer, notice: 'Customer was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /customers/1
  # PUT /customers/1.json
  def update
    @customer = Customer.find(params[:id])

    respond_to do |format|
      if @customer.update_attributes(params[:customer])
        format.html { redirect_to @customer, notice: 'Customer was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy

    respond_to do |format|
      format.html { redirect_to customers_url }
    end
  end

  
end
