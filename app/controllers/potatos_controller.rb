class PotatosController < ApplicationController
  # GET /potatos
  # GET /potatos.json
  def index
    @potatos = Potato.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @potatos }
    end
  end

  # GET /potatos/1
  # GET /potatos/1.json
  def show
    @potato = Potato.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @potato }
    end
  end

  # GET /potatos/new
  # GET /potatos/new.json
  def new
    @potato = Potato.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @potato }
    end
  end

  # GET /potatos/1/edit
  def edit
    @potato = Potato.find(params[:id])
  end

  # POST /potatos
  # POST /potatos.json
  def create
    @potato = Potato.new(params[:potato])

    respond_to do |format|
      if @potato.save
        format.html { redirect_to @potato, notice: 'Potato was successfully created.' }
        format.json { render json: @potato, status: :created, location: @potato }
      else
        format.html { render action: "new" }
        format.json { render json: @potato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /potatos/1
  # PUT /potatos/1.json
  def update
    @potato = Potato.find(params[:id])

    respond_to do |format|
      if @potato.update_attributes(params[:potato])
        format.html { redirect_to @potato, notice: 'Potato was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @potato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /potatos/1
  # DELETE /potatos/1.json
  def destroy
    @potato = Potato.find(params[:id])
    @potato.destroy

    respond_to do |format|
      format.html { redirect_to potatos_url }
      format.json { head :no_content }
    end
  end
end
