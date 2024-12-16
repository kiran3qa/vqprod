require 'tiny_tds'

module DBconnection

   def self.getdbconnection
# TinyTDS Client
client ||= TinyTds::Client.new(
  username: 'db_ab09c2_vqapi_admin',
  password: 'Kini@1341',
  host: 'sql1001.site4now.net',
  database: 'db_ab09c2_vqapi'
)

   end

end

# Test Connection

