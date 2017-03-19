shared_examples 'Nav bar page can be visited' do
  it 'should successfully visit the page' do
    visit_page

    expect(page).to have_http_status(:ok)
    expect(page).to have_css ".nav-link.active", count: 1
    expect(page.find ".nav-link.active").to have_text active_nav_text
  end
end
