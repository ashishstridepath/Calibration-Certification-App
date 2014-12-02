class CertificatesController < ApplicationController


  def index
    @certificates = Certificate.all.paginate( :per_page => 1, :page => params[:page])


    respond_to do |format|
      format.html # index.html.erb
    end
  end


  def show
    @certificate = Certificate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  def new
    @certificate = Certificate.new
    @machine = Machine.find(params[:machine])

    respond_to do |format|
      format.html # new.html.erb
      format.js
    end
  end

  def edit
    @certificate = Certificate.find(params[:id])
  end


  def create
    @certificate = Certificate.new(params[:certificate])

    respond_to do |format|
      if @certificate.save
        format.html { redirect_to :back, notice: 'Certificate was successfully created.' }
      else
        format.html { redirect_to :back, error: 'Error Creating Certificate.'  }
      end
    end
  end

  def update
    @certificate = Certificate.find(params[:id])

    respond_to do |format|
      if @certificate.update_attributes(params[:certificate])
        format.html { redirect_to @certificate, notice: 'Certificate was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end


  def destroy
    @certificate = Certificate.find(params[:id])
    @certificate.destroy

    respond_to do |format|
      format.html { redirect_to :back }
    end
  end
end
