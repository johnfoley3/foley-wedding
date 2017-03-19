require 'rails_helper'
require 'shared_examples/nav_bar_page'

feature 'Home Page works' do
  let(:visit_page) { visit root_path }
  let(:active_nav_text) { 'Home' }

  it_behaves_like 'Nav bar page can be visited'
end