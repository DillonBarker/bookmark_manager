# frozen_string_literal: true

require 'pg'

class Bookmark

  attr_reader :id, :title, :url

  def initialize(id:, title:, url:)
    @id = id
    @title = title
    @url = url
  end

  def self.create(url:, title:)
    ENV['ENVIRONMENT'] == 'test' ? conn = PG.connect(dbname: 'bookmark_manager_test') : conn = PG.connect(dbname: 'bookmark_manager')

    result = conn.exec("INSERT INTO bookmarks (title, url) VALUES('#{title}', '#{url}') RETURNING id, url, title")
    Bookmark.new(id: result[0]['id'], title: result[0]['title'], url: result[0]['url'])
  end

  def self.all
    ENV['ENVIRONMENT'] == 'test' ? conn = PG.connect(dbname: 'bookmark_manager_test') : conn = PG.connect(dbname: 'bookmark_manager')

    result = conn.exec('SELECT * FROM bookmarks;')
    result.map do |bookmark|
      Bookmark.new(id: bookmark['id'], title: bookmark['title'], url: bookmark['url'])
    end
  end

  def self.delete(id:)
    ENV['ENVIRONMENT'] == 'test' ? conn = PG.connect(dbname: 'bookmark_manager_test') : conn = PG.connect(dbname: 'bookmark_manager')

    conn.exec("DELETE FROM bookmarks where id = #{id}")
  end

  def self.update(id:, url:, title:)
    ENV['ENVIRONMENT'] == 'test' ? conn = PG.connect(dbname: 'bookmark_manager_test') : conn = PG.connect(dbname: 'bookmark_manager')

    result = conn.exec("UPDATE bookmarks SET url = '#{url}', title = '#{title}' WHERE id = '#{id}' RETURNING id, url, title;")
    Bookmark.new(id: result[0]['id'], title: result[0]['title'], url: result[0]['url'])
  end

  def self.find(id:)
    ENV['ENVIRONMENT'] == 'test' ? conn = PG.connect(dbname: 'bookmark_manager_test') : conn = PG.connect(dbname: 'bookmark_manager')

    result = conn.exec("SELECT * FROM bookmarks WHERE id = #{id};")
    Bookmark.new(id: result[0]['id'], title: result[0]['title'], url: result[0]['url'])
  end
end
