pipeline {
    options {
    buildDiscarder(logRotator(numToKeepStr: '50', artifactNumToKeepStr: '50'))
    }
    agent any 
    triggers { 
        pollSCM('H/5 * * * *') 
    } 
    stages {
        stage('Test') { 
            steps {
                echo "Test stage"
                sh 'chmod +x buildScripts/test.sh'
                sh('buildScripts/test.sh')
            }
        }
        stage('Build') { 
            steps {
                echo "Build stage"
                sh 'chmod +x buildScripts/build.sh'
                sh('buildScripts/build.sh')
            }
        }
        stage('Deploy') { 
            steps {
                echo "Deploy"
                sh 'chmod +x buildScripts/deploy.sh'
                sh('buildScripts/deploy.sh')
            }
        }
    }
}
