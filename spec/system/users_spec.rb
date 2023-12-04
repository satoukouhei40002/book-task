require 'rails_helper'

def basic_pass(path)
  username = ENV["BASIC_AUTH_USER_2"]
  password = ENV["BASIC_AUTH_PASSWORD_2"]
  visit "http://#{username}:#{password}@#{Capybara.current_session.server.host}:#{Capybara.current_session.server.port}#{path}"
end

RSpec.describe "ユーザーログイン機能", type: :system do
  before do
    @user = FactoryBot.create(:user) # FactoryBot.build から FactoryBot.create に変更
  end

  it 'ログインしていない状態でトップページにアクセスした場合、サインページに移動する' do
    basic_pass root_path
    visit root_path
    expect(current_path).to eq(new_user_session_path)
  end

  it 'ログインに成功し、トップページに遷移する' do
    visit new_user_session_path
    expect(current_path).to eq(new_user_session_path)

    fill_in 'email', with: @user.email
    fill_in 'user_password', with: @user.password
    click_on('Log in')

    expect(current_path).to eq(root_path)
  end

  it 'ログインに失敗し、再びサインインページに戻ってくる' do
    basic_pass root_path
    visit root_path
    expect(current_path).to eq(new_user_session_path)

    fill_in 'user[email]', with: 'invalid_email@example.com' # 不正なユーザー情報
    fill_in 'user_password', with: 'invalid_password'
    click_on('Log in')

    expect(current_path).to eq(new_user_session_path)
  end
end
