class MachinesController < ApplicationController
  # GET /machines
  # GET /machines.json
  def index
    @search = Machine.search(params[:q])
    @machines = @search.result.paginate( :per_page => 1, :page => params[:page])


    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /machines/1
  # GET /machines/1.json
  def show
    @machine = Machine.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /machines/new
  # GET /machines/new.json
  def new
    @machine = Machine.new

    respond_to do |format|
      format.html # new.html.erb
      #format.json { render json: @machine }
    end
  end

  # GET /machines/1/edit
  def edit
    @machine = Machine.find(params[:id])
  end

  def create
    @machine = Machine.new(params[:machine])

    respond_to do |format|
      if @machine.save
        format.html { redirect_to @machine.customer anchor: 'machines', notice: 'Machine was successfully created.' }
        #format.json { render json: @machine, status: :created, location: @machine }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /machines/1
  # PUT /machines/1.json
  def update
    @machine = Machine.find(params[:id])

    respond_to do |format|
      if @machine.update_attributes(params[:machine])
        format.html { redirect_to :back, notice: 'Machine was successfully updated.' }
      else
        format.html { render action: "edit" }

      end
    end
  end

  # DELETE /machines/1
  # DELETE /machines/1.json
  def destroy
    @machine = Machine.find(params[:id])
    @machine.destroy

    respond_to do |format|
      format.html { redirect_to machines_url }
    end
  end

  def destroy_multiple
    Machine.destroy(params[:machines])

    respond_to do |format|
      format.html { redirect_to :back }
    end
  end

end
