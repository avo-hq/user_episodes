class Avo::UserEpisodesController < Avo::ApplicationController
  def index
    @page_title = "Users with podcasts"
    add_breadcrumb "Users with podcasts"

    @users = User.all
  end

  def show
    @user = User.find params[:id]

    @page_title = "#{@user.name} podcasts"
    add_breadcrumb "#{@user.name} podcasts"
  end
end
