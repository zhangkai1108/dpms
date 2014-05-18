#encoding: utf-8
class RolesController < ApplicationController
  before_action :set_role, only: [:show, :edit, :update, :destroy]

  # GET /roles
  def index
    @roles = initialize_grid(Role,:per_page=>15,:name=>"roleList")
  end

  # GET /roles/1
  def show
  end

  # GET /roles/new
  def new
    @role = Role.new
  end
  def batchDelete
    begin
      @selectIds = params[:roleList][:selected].join(',')
      rlt = Role.destroy_all("id in (#{@selectIds})")
      redirect_to roles_path ,notice: '删除角色成功.'
    rescue Exception => ex
      logger.error(ex)
      redirect_to roles_path ,notice: '删除角色成功.'
    end
  end
  # GET /roles/1/edit
  def edit
  end

  # POST /roles
  def create
    @role = Role.new(role_params)

    if @role.save
      redirect_to roles_path, notice: '创建角色成功.'
    else
      render :new
    end
  end

  # PATCH/PUT /roles/1
  def update
    if @role.update(role_params)
      redirect_to roles_path, notice: '更新角色成功.'
    else
      render :edit
    end
  end

  # DELETE /roles/1
  def destroy
    @role.destroy
    redirect_to roles_url, notice: '删除角色成功.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_role
      @role = Role.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def role_params
      params[:role]
    end
end
