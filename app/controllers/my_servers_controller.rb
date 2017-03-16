class MyServersController < ApplicationController
  before_action :set_my_server, only: [:show, :update, :destroy]

  # GET /my_servers
  def index
    @my_servers = MyServer.order('ip ASC')
    render json: @my_servers
  end

  # GET /my_servers/1
  def show
    render json: @my_server
  end

  # POST /my_servers
  def create
    @my_server = MyServer.new(my_server_params)

    if @my_server.save
      ServerMailer.email(@server).deliver_later
      render json: @my_server, status: :created, location: @my_server
    else
      render json: @my_server.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /my_servers/1
  def update
    if @my_server.update(my_server_params)
      render json: @my_server
    else
      render json: @my_server.errors, status: :unprocessable_entity
    end
  end

  # DELETE /my_servers/1
  def destroy
    @my_server.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_server
      @my_server = MyServer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def my_server_params
      params.require(:my_server).permit(:name, :domain, :ip, :netmask, :network, :router, :ns1, :ns2, :so, :version, :arch, :function, :user, :password)
    end
end
