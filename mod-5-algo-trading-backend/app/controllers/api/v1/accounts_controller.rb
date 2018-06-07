class Api::V1::AccountsController < ApplicationController
  before_action :find_account, only: [:update, :show_account]

    def show_account
      render json: current_account
    end

    def index
      @accounts = Account.all
      render json: @accounts
    end

    def create
      @account = Account.create(account_params)
      render json: @account, status: :accepted
    end

    def update
      @account.update(account_params)
      if @account.save
        render json: @account, status: :accepted
      else
        render json: {errors: @account.erros.full_messages}, status: :unprocessible_entity
      end
    end

    private
    def account_params
      params.permit(:username, :password_digest, :id)
    end

    def find_account
      @current_account
    end
end
