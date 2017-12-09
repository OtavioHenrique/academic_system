require 'mysql2'

module Database
  class Mysql
    def initialize(host: , port: , username: , password: nil, database: )
      Mysql2::Client.new(
        host: host,
        port: port,
        username: username,
        password: password,
        database: database
      )
    end
  end
end
