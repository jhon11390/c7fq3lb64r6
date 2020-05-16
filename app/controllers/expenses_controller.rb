class ExpensesController < ApplicationController
  before_action :authenticate_user!
  def index
    @usuario = User.find(current_user.id)
    @expenses = @usuario.expenses
  end
end
