feature 'Deleting a bookmark' do
  scenario 'user can delete a chosen bookmark' do
    add_test_bookmark
    expect(page).to have_link('Test Bookmark', href: 'http://www.testbookmark.com')
    first('.bookmark').click_button 'Delete'
    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_link('Test Bookmark', href: 'http://www.testbookmark.com')
  end
end
