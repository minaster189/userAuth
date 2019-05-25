class UsersController < ApplicationController
  before_action :save_login_state, :only => [:new, :create]

    def new
        @user = User.new
    end

    def create
        @user = User.new(params[:user])
        if @user.save
            flash[:notice] = "Signed up Successfully!"
            flash[:color] = "valid"
        else
          flash[:notice] = "Form is invalid!"
          flash[:color] = "valid"
        end
        render "new"
    end
end
