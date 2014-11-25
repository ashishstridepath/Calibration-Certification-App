class TestWeightsController < ApplicationController
  # GET /test_weights
  # GET /test_weights.json
  def index
    @test_weights = TestWeight.where("date_calibrated > ?", Date.today() - 12.months)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @test_weights }
    end
  end

  # GET /test_weights/1
  # GET /test_weights/1.json
  def show
    @test_weight = TestWeight.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @test_weight }
    end
  end

  # GET /test_weights/new
  # GET /test_weights/new.json
  def new
    @test_weight = TestWeight.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @test_weight }
    end
  end

  # GET /test_weights/1/edit
  def edit
    @test_weight = TestWeight.find(params[:id])
  end

  # POST /test_weights
  # POST /test_weights.json
  def create
    @test_weight = TestWeight.new(params[:test_weight])

    respond_to do |format|
      if @test_weight.save
        format.html { redirect_to @test_weight, notice: 'Test weight was successfully created.' }
        format.json { render json: @test_weight, status: :created, location: @test_weight }
      else
        format.html { render action: "new" }
        format.json { render json: @test_weight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /test_weights/1
  # PUT /test_weights/1.json
  def update
    @test_weight = TestWeight.find(params[:id])

    respond_to do |format|
      if @test_weight.update_attributes(params[:test_weight])
        format.html { redirect_to @test_weight, notice: 'Test weight was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @test_weight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_weights/1
  # DELETE /test_weights/1.json
  def destroy
    @test_weight = TestWeight.find(params[:id])
    @test_weight.destroy

    respond_to do |format|
      format.html { redirect_to test_weights_url }
      format.json { head :no_content }
    end
  end
end
