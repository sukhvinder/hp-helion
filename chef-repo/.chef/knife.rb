# See http://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "sukhvinderkumar"
client_key               "#{current_dir}/sukhvinderkumar.pem"
validation_client_name   "helion-validator"
validation_key           "#{current_dir}/helion-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/helion"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
ssl_verify_mode :verify_peer

#add the following lines                              
knife[:hp_access_key] = "78AVALYDPU61H8DNJ47X"
knife[:hp_secret_key] = "TsVI8sILnBreKh6jUhoNZRaONHJjg1KiKSDH9sJB"
#knife[:hp_tenant_id]  = "10559123414857"
knife[:hp_tenant_id]  = "10949722809581"
knife[:hp_auth_uri]   = "https://region-a.geo-1.identity.hpcloudsvc.com:35357/v2.0/tokens"
knife[:hp_avl_zone]   = "az1" #do not pass any Availability Zone if working with az3 or it won't work
