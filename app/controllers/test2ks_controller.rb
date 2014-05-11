class Test2ksController < ApplicationController
  # GET /test2ks
  # GET /test2ks.json
  def index
    @test2ks = Test2k.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @test2ks }
    end
  end

  # GET /test2ks/1
  # GET /test2ks/1.json
  def show
    @test2k = Test2k.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @test2k }
    end
  end

  # GET /test2ks/new
  # GET /test2ks/new.json
  def new
    @test2k = Test2k.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @test2k }
    end
  end

  # GET /test2ks/1/edit
  def edit
    @test2k = Test2k.find(params[:id])
  end

  # POST /test2ks
  # POST /test2ks.json
  def create
    @test2k = Test2k.new(params[:test2k])

    respond_to do |format|
      if @test2k.save
        format.html { redirect_to @test2k, notice: 'Test2k was successfully created.' }
        format.json { render json: @test2k, status: :created, location: @test2k }
      else
        format.html { render action: "new" }
        format.json { render json: @test2k.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /test2ks/1
  # PUT /test2ks/1.json
  def update
    @test2k = Test2k.find(params[:id])

    respond_to do |format|
      if @test2k.update_attributes(params[:test2k])
        format.html { redirect_to @test2k, notice: 'Test2k was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @test2k.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test2ks/1
  # DELETE /test2ks/1.json
  def destroy
    @test2k = Test2k.find(params[:id])
    @test2k.destroy

    respond_to do |format|
      format.html { redirect_to test2ks_url }
      format.json { head :no_content }
    end
  end
end
