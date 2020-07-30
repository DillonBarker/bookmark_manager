require './lib/database_connection'


ENV['ENV'] == 'test' ? DatabaseConnection.setup('bookmark_manager_test') : DatabaseConnection.setup('bookmark_manager')
