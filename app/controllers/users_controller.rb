class UsersController < ApplicationController
  def show
    @me = User.find(params[:id])
    render :action => 'status'
  end
  def edit
    @me = User.find(params[:id])
    render :action => 'edit'
  end
  def deactivate
    @me = User.find(params[:id])
    render :action => 'deactivate'
  end
end