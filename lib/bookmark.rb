require 'pg'

class Bookmark

  def self.all
    conn = PG.connect(dbname: 'bookmark_manager')
    print = conn.exec('SELECT * FROM bookmarks;')
    print.map { |bookmark| bookmark['url'] }
  end

end
