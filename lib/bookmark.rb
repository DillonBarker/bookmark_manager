class Bookmark

  attr_reader :list

  def initialize
    @list = []
  end

  def self.create
    @bookmark = Bookmark.new
  end

  def self.all
    @bookmark.list
  end

end
