feature 'Home page' do
  scenario 'shows home page' do
    visit '/'
    expect(page).to have_content 'Dillons fabulous bookmark manager'
  end
end
