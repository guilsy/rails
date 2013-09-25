class PinnsController < ApplicationController
  before_filter :authenticate_user!, except: [:index]

  # GET /pinns
  # GET /pinns.json
  def index
    @pinns = Pinn.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pinns }
    end
  end

  # GET /pinns/1
  # GET /pinns/1.json
  def show
    @pinn = Pinn.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pinn }
    end
  end

  # GET /pinns/new
  # GET /pinns/new.json
  def new
    @pinn = current_user.pinns.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pinn }
    end
  end

  # GET /pinns/1/edit
  def edit
    @pinn = current_user.find(params[:id])
  end

  # POST /pinns
  # POST /pinns.json
  def create
    @pinn = current_user.pinns.new(params[:pinn])

    respond_to do |format|
      if @pinn.save
        format.html { redirect_to @pinn, notice: 'Pinn was successfully created.' }
        format.json { render json: @pinn, status: :created, location: @pinn }
      else
        format.html { render action: "new" }
        format.json { render json: @pinn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pinns/1
  # PUT /pinns/1.json
  def update
    @pinn = current_user.find(params[:id])

    respond_to do |format|
      if @pinn.update_attributes(params[:pinn])
        format.html { redirect_to @pinn, notice: 'Pinn was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pinn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pinns/1
  # DELETE /pinns/1.json
  def destroy
    @pinn = current_user.find(params[:id])
    @pinn.destroy

    respond_to do |format|
      format.html { redirect_to pinns_url }
      format.json { head :no_content }
    end
  end
end
