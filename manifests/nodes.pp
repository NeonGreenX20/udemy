node 'node1' {
  notify {"****** NODE1 BLOCK*******":}
  class {'::tomcat':
  }
  include base
}

node default {
  notify {"********DEFAULT BLOCK*******":}
}

node 'node2' {
  notify {'Node2':
    message => "****THIS IS NODE 2****",
  }
  class {'::tomcat':
  }
}
