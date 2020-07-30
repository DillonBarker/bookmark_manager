require 'database_connection'

describe DatabaseConnection do

  describe '.setup' do
    it 'sets up a connection to PG' do
      expect(PG).to receive(:connect).with(dbname: 'bookmark_manager_test')
      DatabaseConnection.setup('bookmark_manager_test')
    end

    it 'sets up connection that is ongoing' do
      conn = DatabaseConnection.setup('bookmark_manager_test')
      expect(DatabaseConnection.connection).to eq conn
    end
  end


end
