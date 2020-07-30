require 'bookmark'

describe Bookmark do

  describe '.all' do
    it 'returns list of all bookmark instances as an array' do
      bookmark = Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
      Bookmark.create(url: 'http://www.destroyallsoftware.com', title: 'Destroy All Software')
      Bookmark.create(url: 'http://www.google.com', title: 'Google')
      
      bookmarks = Bookmark.all

      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq 'Makers Academy'
      expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      bookmark = Bookmark.create(url: 'http://www.testbookmark.com', title: 'Test Bookmark')
      persisted_data = persisted_data(id: bookmark.id)
      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data['id']
      expect(bookmark.url).to eq 'http://www.testbookmark.com'
      expect(bookmark.title).to eq 'Test Bookmark'
    end
  end

  describe '.delete' do
    it 'deleted a bookmark' do
      bookmark = Bookmark.create(url: 'http://www.testbookmark.com', title: 'Test Bookmark')
      Bookmark.delete(id: bookmark.id)
      expect(Bookmark.all.length).to eq 0
    end
  end

  describe '.find' do
    it 'returns the bookmark selected' do
      bookmark = Bookmark.create(url: 'http://www.testbookmark.com', title: 'Test Bookmark')
      found = Bookmark.find(id: bookmark.id)
      expect(found).to be_a Bookmark
      expect(found.id).to eq bookmark.id
      expect(found.title).to eq 'Test Bookmark'
      expect(found.url).to eq 'http://www.testbookmark.com'
    end
  end
end
