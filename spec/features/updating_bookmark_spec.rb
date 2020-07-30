feature 'Updating a bookmark' do
  scenario 'user can update a chosen bookmark' do
    bookmark = Bookmark.create(url: 'http://www.testbookmark.com', title: 'Test Bookmark')
    visit('/bookmarks')
    expect(page).to have_link('Test Bookmark', href: 'http://www.testbookmark.com')
    first('.bookmark').click_button 'Update'
    expect(current_path).to eq "/bookmarks/#{bookmark.id}/update"
    fill_in('url', with: 'http://www.updatebookmark.com')
    fill_in('title', with: 'Updated Bookmark')
    click_button 'Submit'
    expect(current_path).to eq "/bookmarks"
    expect(page).not_to have_link('Test Bookmark', href: 'http://www.testbookmark.com')
    expect(page).to have_link('Updated Bookmark', href: 'http://www.updatebookmark.com')
  end
end
