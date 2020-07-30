# frozen_string_literal: true
require 'pg'
require_relative '../lib/database_connection'

def setup_test_database
  p 'setting up test database...'
  conn = DatabaseConnection.setup('bookmark_manager_test')

  conn.exec('TRUNCATE bookmarks;')
end
