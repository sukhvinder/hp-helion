::Chef::Recipe.send(:include, Opscode::OpenSSL::Password)

include_recipe 'java'

name "java-app-server"
run_list("recipe[tomcat]")
override_attributes(
  'tomcat' => {
    'java_options' => "${JAVA_OPTS} -Xmx128M -Djava.awt.headless=true",
    'base_version' => "7"
  }
)
