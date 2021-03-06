#encoding: utf-8
class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy],:except => [:queryRole]

  # GET /users
  def index
    @users = initialize_grid(User, per_page: 15,:name => 'g')
  end

  def role
      @aa= TreeModel.find_by_sql("SELECT r.id,r.rName text,if(ur.user_id is null,false,true) checked  FROM roles r left join roles_users ur on ur.role_id = r.id and ur.user_id = #{params[:id]}");
      respond_to do |format|
        format.html {render json:  @aa.as_json , :layout => false}
      end
  end

  # GET /users/1
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  def create
    @user = User.new(user_params)
    UsersRoles.destroy_all("userid = "+@user.id)
    user_params.ids.each { |rid|
      @ur = UsersRoles.new(@user.id,rid)
      @ur.save
     }
    if @user.save
      redirect_to users_path, notice: '用户创建成功.'
    else
      render :new
    end
  end

  def batchDelete
    begin
      @selectIds = params[:g][:selected].join(',')
      rlt = User.destroy_all("id in (#{@selectIds})")
      redirect_to users_path, notice: '删除用户成功.'
    rescue Exception => ex
      logger.error(ex)
      redirect_to users_path, notice: '删除用户失败.'
    end
  end
  # PATCH/PUT /users/1
  def update
    RolesUsers.delete_all(" user_id = #{@user.id}")
    if params[:ids]
      idArray = params[:ids].split(',')
      idArray.each { |rid|
        @ur = RolesUsers.new()
        @ur.user_id = @user.id
        @ur.role_id= rid
        @ur.save
      }
    end
    if @user.update(user_params)
      redirect_to users_path, notice: '用户成功被更新.'
    else
      render :edit
    end
  end

  # DELETE /users/1
  def destroy

    @user.destroy
    redirect_to users_url, notice: '用户删除成功,'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      if(params[:id])
        @user = User.find(params[:id])
      end
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:name, :email, :qq, :tel)
    end
end
