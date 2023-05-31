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
    attr_accessor :id, :name, :birthyear

    def self.all
        data = PlaywrightDBConnection.instance.execute("SELECT * FROM playwright")
        data.map { |datum| Playwright.new(datum) }
      end