# frozen_string_literal: true

module Admin
  class UsersController < BaseController
    before_action :set_user, only: [:show, :edit, :update, :destroy]
    def index
      @users = User.all
    end

    def show
    end

    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)
      if @user.save
        flash[:notice] = 'Usuário atualizado com sucesso!'
        redirect_to admin_users_path
      else
        flash[:alert] = 'Algo deu errado ao criar usuário.'
        render :new
      end
    end

    def edit
    end

    def update
      if @user.update(user_params)
        flash[:notice] = 'Usuário atualizado com sucesso!'
        redirect_to admin_users_path
      else
        flash[:alert] = 'Algo deu errado ao atualizar usuário.'
        render :edit
      end
    end

    def destroy
      if current_user.id != @user.id
        message = 'Usuário excluído com sucesso!'
        @user.destroy
      else
        message = 'Você não pode excluir a sua própria conta.'
      end
      flash[:notice] = message
      redirect_to action: :index
    end

    private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
  end
end
