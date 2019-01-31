class SecretsController < ApplicationController
  before_action :require_login

  def show
    if @document = Document.find(params[:id])

    else
      redirect_to '/sessions'
    end


  end

  # def index
  # end
  #
  # def create
  #   @document = Document.create(author_id: user_id)
  # end

  private

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end
end
