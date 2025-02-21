@Library('java_demo_pipeline@main') _
pipeline {
  agent {label 'slave1'}
  /*  parameters {
      string(name:'cmd1',description:'give build the command',defaultValue:'clean')
        choice(choices:['package','compile','install'],name:'cmd2')
                }*/
    stages {
      stage('checkout') {
        steps {
         // sh "rm -rf webapp--hello"
        //  sh "git clone https://github.com/Prasadik/webapp--hello.git"
          checkoutcode()
              }      
            }
        stage('build') {
        steps {
          echo "build stage"
         // sh "cd webapp--hello"
        //  sh "mvn $cmd1 $cmd2"
          buildartifact('package')
              }      
            }
       
      stage('publish') {
        steps {
          sh "mvn clean deploy"
        //  buildartifact('deploy')
        }
      }

       stage('download') {
            steps {             
            
withCredentials([string(credentialsId: 'jfrog_token', variable: 'JFROG_API_TOKEN')]) {
                        sh '''
                       // curl -L -u  "prasadgowdaik@gmail.com:\${JFROG_API_TOKEN}" -o "prasad-1.0.0.war" "https://trialmnwp21.jfrog.io/artifactory/jfrog-hello-world-libs-release/com/efsavage/hello-world-war/1.0.0/hello-world-war-1.0.0.war"
                       curl -L -u  "prasadgowdaik@gmail.com:\${JFROG_API_TOKEN}" -T "target/hello-world-war-1.0.0.war" "https://trialmnwp21.jfrog.io/artifactory/jfrog-hello-world-libs-release/com/efsavage/hello-world-war/1.0.0/hello-world-war-1.0.0.war"
                        '''
}
            }
        }
        stage('deploy') {
        steps {
          sh "scp target/*.war root@172.31.21.230:/opt/apache-tomcat-10.1.34/webapps/"
              }      
            }
          }
      }
