name "web"
description "Weaving the Webs"
run_list "recipe[rails]"
default_attributes "rails":{"deployer": "vagrant","env": "production","app_name": "reels"},
# override_attributes "node" => { "attribute" => [ "value", "value", "etc." ] }