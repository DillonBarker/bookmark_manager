require 'bookmark'

describe Bookmark do

  describe '#all' do
    it 'returns list of all bookmark instances as an array' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include "http://www.makersacademy.com"
      expect(bookmarks).to include "http://www.destroyallsoftware.com"
      expect(bookmarks).to include "http://www.google.com"
    end
  end
end
