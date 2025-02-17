pipeline {
  agent {label 'slave1'}
    parameters {
      string(name:'cmd1',description:'give build the command',defaultValue:'clean')
        choice(choices:['package','compile','install'],name:'cmd2')
                }
    stages {
      stage('checkout') {
        steps {
          sh "rm -rf webapp--hello"
          sh "git clone https://github.com/Prasadik/webapp--hello.git"
              }      
            }
        stage('build') {
        steps {
          sh "cd webapp--hello"
          sh "mvn $cmd1 $cmd2"
              }      
            }
        stage('deploy') {
        steps {
          sh "sudo cp target/*.war /opt/apache-tomcat-10.1.35/webapps/"
              }      
            }
          }
      }
