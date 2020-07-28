require 'pg'

class Bookmark

  def self.all
    connection = PG.connect(dbname: 'bookmark_manager')
    print = connection.exec('SELECT * FROM bookmarks;')
    print.map { |bookmark| bookmark['url'] }
  end

end
