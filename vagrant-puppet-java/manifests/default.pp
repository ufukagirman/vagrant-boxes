
node default {

class { 'oracle_java':
  version => '8u45',
  type    => 'jdk',
  install_path => '/opt/java',
  add_system_env => 'true'
}

file { '/etc/profile.d/append-java-path.sh':
    mode    => '644',
    content => 'export PATH=$JAVA_HOME/bin:$PATH',
}

}

$content = "some content\n"

notice("this is notice. always visible : ${content}")

notify { "test":
  message  => "test: ${content} "
}
