require 'rails_helper'
require 'shared_examples/nav_bar_page'

feature 'RSVP page' do
  let(:visit_page) { visit rsvp_new_path }
  let(:active_nav_text) { 'RSVP' }

  it_behaves_like 'Nav bar page can be visited'
end
