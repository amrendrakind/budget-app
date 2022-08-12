require 'rails_helper'

RSpec.describe Transaction, type: :model do
  
  subject { Transaction.new(user_id: 1, name:'fast-food', amount: '50', group_id:1) }

  before { subject.save }

  it 'user_id should be a number' do
    subject.user_id = 'nil'
    expect(subject).to_not be_valid
  end

  it 'expect to save the entry' do
    @user = User.create(name: 'Amrendra Kumar', email: 'amrendrak.ind@gmail.com', password: '123456')
    @group= Group.create(user_id: @user.id,  name: 'Icon1',  icon: '🎉')
    @transaction = Transaction.create(user_id: @user.id,  name: 'fast-food',  amount: 60, group_id: @group.id)
    expect(@transaction.name).to eq 'fast-food'
  end
end