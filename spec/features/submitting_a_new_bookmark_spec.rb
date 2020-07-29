feature 'sumbitting a new bookmark via form' do
  scenario 'user fills out form and clicks ' do
    add_test_bookmark
    expect(page).to have_content 'http://www.test.url'
  end
end
