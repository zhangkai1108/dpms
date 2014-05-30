class CustomsController < ApplicationController
  before_action :set_custom, only: [:show, :edit, :update, :destroy]

  # GET /customs
  def index
    @customs = Custom.all
  end

  # GET /customs/1
  def show
  end

  # GET /customs/new
  def new
    @custom = Custom.new
  end

  # GET /customs/1/edit
  def edit
  end

  # POST /customs
  def create
    @custom = Custom.new(custom_params)

    if @custom.save
      redirect_to @custom, notice: 'Custom was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /customs/1
  def update
    if @custom.update(custom_params)
      redirect_to @custom, notice: 'Custom was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /customs/1
  def destroy
    @custom.destroy
    redirect_to customs_url, notice: 'Custom was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custom
      @custom = Custom.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def custom_params
      params.require(:custom).permit(:name, :linkMan, :mainMan, :level, :linkTel, :mainTel, :customDesc, :customLove, :operName, :addr)
    end
end
