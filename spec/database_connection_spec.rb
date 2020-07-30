require 'database_connection'

describe DatabaseConnection do

  describe '.setup' do
    it 'sets up a connection to PG' do
      expect(PG).to receive(:connect).with(dbname: 'bookmark_manager_test')
      DatabaseConnection.setup('bookmark_manager_test')
    end
  end

  describe '.query' do
    it 'executes an SQL command via PG' do
      conn = DatabaseConnection.setup('bookmark_manager_test')
      expect(conn).to receive(:exec).with('SELECT * FROM bookmarks;')
      DatabaseConnection.query('SELECT * FROM bookmarks;')
    end
  end


end
