# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "mikevtest"
client_key               "#{current_dir}/mikevtest.pem"
validation_client_name   "mikevtest-validator"
validation_key           "#{current_dir}/mikevtest-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/mikevtest"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
cookbook_copyright "mikevtest"
cookbook_license "apachev2"
cookbook_email "smithmw@us.ibm.com"
