feature 'test page' do
  scenario 'shows test page, hello world' do
    visit '/test'
    expect(page).to have_content 'hello world'
  end
end
