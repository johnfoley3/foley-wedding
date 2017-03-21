require 'rails_helper'
require 'shared_examples/nav_bar_page'

feature 'Home Page works' do
  let(:visit_page) { visit root_path }
  let(:active_nav_text) { 'Home' }

  it_behaves_like 'Nav bar page can be visited'
end

feature 'Our Story Page works' do
  let(:visit_page) { visit our_story_path }
  let(:active_nav_text) { 'Our Story' }

  it_behaves_like 'Nav bar page can be visited'
end

feature 'Details Page works' do
  let(:visit_page) { visit details_path }
  let(:active_nav_text) { 'Details' }

  it_behaves_like 'Nav bar page can be visited'
end
