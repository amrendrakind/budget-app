require 'rails_helper'

RSpec.describe 'Category', type: :feature do
  before :each do
    @user = User.create(name: 'Amrendra Kumar', email: 'amrendrak.ind@gmail.com', password: '123456')

    visit root_path
    visit new_user_session_path
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Log in'
    sleep 1
    click_link 'Add Category'
  end

  it 'renders the category new page' do
    expect(current_path).to eql('/groups/new')
  end

  it 'Has the form to add a category' do
    expect(page).to have_content('Add New Category')
  end

end
