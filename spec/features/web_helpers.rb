def add_test_bookmark
  visit('/bookmarks/new')
  fill_in('url', with: 'http://www.test.url')
  click_button 'Submit'
  
end
