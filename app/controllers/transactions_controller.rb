class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.where(user_id: current_user.id)
  end

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.user_id = current_user.id
    @transaction.group_id = @group.id

    if @transaction.save
      flash[:notice] = 'transaction was successfully created.'
      redirect_to group_path(@group)
    else
      flash[:error] = 'Error creating transaction'
      redirect_to new_transaction_path(@group)
    end
  end

  def destroy
    @transaction.destroy
    redirect_to group_path
  end

  def group_params
    params.require(:group).permit(:name, :icon)
  end

  def transaction_params
    params.require(:transaction).permit(:name, :amount, :group_id)
  end
end
