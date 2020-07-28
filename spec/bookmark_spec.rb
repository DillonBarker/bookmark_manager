require 'bookmark'

describe Bookmark do

  describe '#initialize' do
    it 'creates an empty list of bookmarks' do
      expect(Bookmark.new.list).to eq []
    end
  end

  describe '#all' do
    it 'returns list of all bookmark instances as an array' do
      Bookmark.create
      expect(Bookmark.all.empty?).to be true
    end
  end

end
