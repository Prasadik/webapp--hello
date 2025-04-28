//@Library('java_demo_pipeline@main') _
pipeline {
  agent any
  /*  parameters {
      string(name:'cmd1',description:'give build the command',defaultValue:'clean')
        choice(choices:['package','compile','install'],name:'cmd2')
                }*/
    stages {
   /*   stage('checkout') {
        steps {
         // sh "rm -rf webapp--hello"
        //  sh "git clone https://github.com/Prasadik/webapp--hello.git"
          checkoutcode()
              }      
            } */
        stage('build') {
        steps {
          echo "build stage"
         // sh "cd webapp--hello"
        //  sh "mvn $cmd1 $cmd2"
        //  buildartifact('package')
          sh "docker build -t hellonew:1.0"
              }      
            }
       
      stage('publish') {
        steps {
        //  sh "mvn clean deploy"
        //  buildartifact('deploy')
          sh "docker tag hellonew:1.0 prasadik/repo:new1.0"
        }
      }

      
          }
      }
