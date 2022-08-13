class TransactionsController < ApplicationController
  before_action :set_group, only: %i[new create edit update destroy]
  before_action :set_transaction, only: %i[edit update destroy]

  def index
    @group = Group.where(user_id: current_user.id, id: params[:group_id])
  end

  def new
    @transaction = Transaction.new
    @group = Group.where(user_id: current_user)
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.user_id = current_user.id
    @transaction.group_id = @group.id

    if @transaction.save
      flash[:notice] = 'Transaction was successfully created.'
      redirect_to group_transactions_path
    else
      flash[:error] = 'Error creating transaction'
      redirect_to new_group_transaction_path(@group)
    end
  end

  def destroy
    if @transaction.destroy
      flash[:notice] = 'Transaction was successfully created.'
      redirect_to group_path
    else
      flash[:error] = 'Error creating transaction'
    end
  end

  def transaction_params
    params.require(:transaction).permit(:name, :amount)
  end

  def set_transaction
    @transaction = Transaction.find(params[:id])
  end

  def set_group
    @group = Group.find(params[:group_id])
  end
end
