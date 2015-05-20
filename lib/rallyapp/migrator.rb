require_relative '../../config/environment'

module RallyApp
  class Migrator
    require 'sequel'
    def self.migrate!
      db = Sequel.connect(ENV['RALLYAPP_DATABASE_URL'])
    end
  end
end
