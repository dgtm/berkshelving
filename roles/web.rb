name "web"
description "Weaving the Webs"
run_list "recipe[rails]"
default_attributes(
  "rails" => {"deployer" => "ubuntu","env" => "production","app_name" => "reels"},
  "nginx" => {"init_style" => "init"}
  )
# override_attributes "node" => { "attribute" => [ "value", "value", "etc." ] }