class SubsController < ApplicationController
  
  before_action :require_logged_in

  def new
    @sub = Sub.new
  end

  def create
    @sub = Sub.new(sub_params)

    if @sub.save
      redirect_to sub_url(@sub)
    else
      flash.now[:errors] = @sub.errors.full_messages
      render :new
    end
  end

  def index
    @subs = Sub.all
    render :index
  end

  def show
    @sub = Sub.find_by(id: params[:id])
    render :show
  end

  def edit
    @sub = Sub.find_by(id: params[:id])
    render :edit
  end

  def update
    @sub = Sub.find_by(id: params[:id])
    if @sub.mod_id == current_user.id && @sub.update(sub_params)
      redirect_to sub_url(@sub)
    else
      flash.now[:errors] = ['Something did a mistake...']
      render :edit
    end

    def sub_params
      params.require(:sub).permit(:title, :details)
    end
  end

end
