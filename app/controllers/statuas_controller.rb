class StatuasController < ApplicationController
  # GET /statuas
  # GET /statuas.json
  def index
    @statuas = Statua.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @statuas }
    end
  end

  # GET /statuas/1
  # GET /statuas/1.json
  def show
    @statua = Statua.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @statua }
    end
  end

  # GET /statuas/new
  # GET /statuas/new.json
  def new
    @statua = Statua.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @statua }
    end
  end

  # GET /statuas/1/edit
  def edit
    @statua = Statua.find(params[:id])
  end

  # POST /statuas
  # POST /statuas.json
  def create
    @statua = Statua.new(params[:statua])

    respond_to do |format|
      if @statua.save
        format.html { redirect_to @statua, notice: 'Statua was successfully created.' }
        format.json { render json: @statua, status: :created, location: @statua }
      else
        format.html { render action: "new" }
        format.json { render json: @statua.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /statuas/1
  # PUT /statuas/1.json
  def update
    @statua = Statua.find(params[:id])

    respond_to do |format|
      if @statua.update_attributes(params[:statua])
        format.html { redirect_to @statua, notice: 'Statua was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @statua.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /statuas/1
  # DELETE /statuas/1.json
  def destroy
    @statua = Statua.find(params[:id])
    @statua.destroy

    respond_to do |format|
      format.html { redirect_to statuas_url }
      format.json { head :no_content }
    end
  end
end
