pipeline {
       agent none     
        stages {
             stage('Build') {
                    agent {label 'docker-slave-demo'}
                steps {
                    
                       script {
                              echo 'Hello world! Running build phase.'
                              sh docker build -f Dockerfile. -t testbuildimage:1.0 --no-cache
                       }
                                          
               }
            }
        stage ('Test') { 
            steps {
                    echo 'Running test phase.' 
            }
        
        }
        stage ('QA') { 
            steps {
                    echo 'Running QA phase.' 
            }
        
        }
        stage ('Deploy') { 
            steps {
                    echo 'Running deploy phase.' 
            }
        
        }
        stage ('Monitor') { 
            steps {
                    echo 'Running monitor phase.' 
            }
 
        }
    }
}
