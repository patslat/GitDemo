class TatersController < ApplicationController
  # GET /taters
  # GET /taters.json
  def index
    @taters = Tater.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @taters }
    end
  end

  # GET /taters/1
  # GET /taters/1.json
  def show
    @tater = Tater.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tater }
    end
  end

  # GET /taters/new
  # GET /taters/new.json
  def new
    @tater = Tater.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tater }
    end
  end

  # GET /taters/1/edit
  def edit
    @tater = Tater.find(params[:id])
  end

  # POST /taters
  # POST /taters.json
  def create
    @tater = Tater.new(params[:tater])

    respond_to do |format|
      if @tater.save
        format.html { redirect_to @tater, notice: 'Tater was successfully created.' }
        format.json { render json: @tater, status: :created, location: @tater }
      else
        format.html { render action: "new" }
        format.json { render json: @tater.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /taters/1
  # PUT /taters/1.json
  def update
    @tater = Tater.find(params[:id])

    respond_to do |format|
      if @tater.update_attributes(params[:tater])
        format.html { redirect_to @tater, notice: 'Tater was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tater.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taters/1
  # DELETE /taters/1.json
  def destroy
    @tater = Tater.find(params[:id])
    @tater.destroy

    respond_to do |format|
      format.html { redirect_to taters_url }
      format.json { head :no_content }
    end
  end
end
