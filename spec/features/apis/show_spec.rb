require 'rails_helper'

describe 'Apis - Show', type: :feature, js: true do

  let(:create_post_path) { "#{Rails.root}/docs/apis/v1/posts/create.json" }
  let(:create_post_content) do
    {}
  end

  before do
    # File.open(create_post_path, 'w+') { |f| f.write(create_post_content) }
  end

  it "creates a directory" do
    FakeFS do
      Library.add "directory"
      assert File.directory?("directory")
    end
  end

  # it "signs me in" do
  #   visit '/sessions/new'
  #   within("#session") do
  #     fill_in 'Email', :with => 'user@example.com'
  #     fill_in 'Password', :with => 'password'
  #   end
  #   click_button 'Sign in'
  #   expect(page).to have_content 'Success'
  # end
end
