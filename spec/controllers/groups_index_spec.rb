require 'rails_helper'

RSpec.describe 'Category', type: :feature do
  before :each do
    @user = User.create(name: 'Amrendra Kumar', email: 'amrendrak.ind@gmail.com', password: '123456')

    visit root_path
    visit new_user_session_path
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Log in'
  end

  it 'renders the category index page' do
    sleep(3)
    expect(current_path).to eql('/groups')
  end

  it 'Has an button to add Category' do
    sleep(2)
    expect(page).to have_content('Add Category')
  end

  it 'renders the page to add a category' do
    click_link 'Add Category'
    sleep(2)
    expect(current_path).to eql('/groups/new')
  end
end
