require 'bookmark'

describe Bookmark do

  describe '#all' do
    it 'returns list of all bookmark instances as an array' do
      Bookmark.create
      expect(Bookmark.all.empty?).to be true
    end
  end
end
