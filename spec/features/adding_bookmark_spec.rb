# frozen_string_literal: true

feature 'Creating and adding bookmarks' do
  scenario 'A user can add a bookmark to bookmark manager' do
    add_test_bookmark
    expect(page).to have_link('Test Bookmark', href: 'http://www.testbookmark.com')
  end
end
