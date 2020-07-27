feature 'view bookmarks' do
  scenario 'go to bookmarks route and see bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content 'Your Bookmarks:'
  end
end
