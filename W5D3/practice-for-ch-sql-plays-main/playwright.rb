require 'sqlite3'
require 'singleton'

class PlaywrightDBConnection < SQLite3::Database
    include Singleton

    def initialize
        super('playwright.db')
        self.type_translation = true
        self.results_as_hash = true
    end

end
class Playwright
    attr_accessor :id, :name, :birth_year

    def self.all
        data = PlaywrightDBConnection.instance.execute("SELECT * FROM playwright")
        data.map { |datum| Playwright.new(datum) }
    end

    def create
        raise "#{self} already in database" if self.id
        PlayDBConnection.instance.execute(<<-SQL, self.id, self.name, self.birth_year)
          INSERT INTO
            playwright (id, name, birth_year)
          VALUES
            (?, ?, ?)
        SQL
        self.id = PlayDBConnection.instance.last_insert_row_id
      end