current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "dipeshgtm"
client_key               "#{current_dir}/dipesh.pem"
validation_client_name   "nepal-validator"
validation_key           "#{current_dir}/validation.pem"
chef_server_url          "https://api.opscode.com/organizations/nepal"
cache_type               'BasicFile'
cookbook_path            ["#{current_dir}/../cookbooks"]
knife[:aws_access_key_id]      = ENV['AWS_ACCESS_KEY_ID']
knife[:aws_secret_access_key]  = ENV['AWS_SECRET_ACCESS_KEY']