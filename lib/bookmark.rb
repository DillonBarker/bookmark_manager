require 'pg'

class Bookmark

  def self.create(url:)
    if ENV['ENVIRONMENT'] == 'test'
      conn = PG.connect(dbname: 'bookmark_manager_test')
    else
      conn = PG.connect(dbname: 'bookmark_manager')
    end
    conn.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
  end

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      conn = PG.connect(dbname: 'bookmark_manager_test')
    else
      conn = PG.connect(dbname: 'bookmark_manager')
    end

    print = conn.exec('SELECT * FROM bookmarks;')
    print.map { |bookmark| bookmark['url'] }
  end

end
