class ExpensesController < ApplicationController
  def index
    if params[:concept] == "burral"
      @expenses = Expense.where(category_id: 1)
      if params[:category_id] == "2" || params[:category_id] == "3"
        @expenses = []
      end
    elsif params[:concept] == "Gasolina" && params[:category_id] == "2"
      @expenses = Expense.where(category_id: 2)
    elsif params[:category_id] == "3"
      @expenses = Expense.where(category_id: 3)
    else
      @expenses = Expense.order("date DESC")
    end
  end
end
