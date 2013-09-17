class DerpusController < ApplicationController
  # GET /derpus
  # GET /derpus.json
  def index
    @derpus = Derpu.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @derpus }
    end
  end

  # GET /derpus/1
  # GET /derpus/1.json
  def show
    @derpu = Derpu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @derpu }
    end
  end

  # GET /derpus/new
  # GET /derpus/new.json
  def new
    @derpu = Derpu.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @derpu }
    end
  end

  # GET /derpus/1/edit
  def edit
    @derpu = Derpu.find(params[:id])
  end

  # POST /derpus
  # POST /derpus.json
  def create
    @derpu = Derpu.new(params[:derpu])

    respond_to do |format|
      if @derpu.save
        format.html { redirect_to @derpu, notice: 'Derpu was successfully created.' }
        format.json { render json: @derpu, status: :created, location: @derpu }
      else
        format.html { render action: "new" }
        format.json { render json: @derpu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /derpus/1
  # PUT /derpus/1.json
  def update
    @derpu = Derpu.find(params[:id])

    respond_to do |format|
      if @derpu.update_attributes(params[:derpu])
        format.html { redirect_to @derpu, notice: 'Derpu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @derpu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /derpus/1
  # DELETE /derpus/1.json
  def destroy
    @derpu = Derpu.find(params[:id])
    @derpu.destroy

    respond_to do |format|
      format.html { redirect_to derpus_url }
      format.json { head :no_content }
    end
  end
end
