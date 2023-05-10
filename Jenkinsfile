pipeline {
    agent {
        docker {
            image 'node:16.13.1-alpine'
        }
    }
    stages {
        stage('Build') {
            steps {
               echo 'Building stage'
               sh 'node --version'
            }
        }
        stage('Test') {
            steps{
                echo 'Testing stage'
            }
        }
        stage('Deploy') {
            steps{
                echo 'Deploying stage'
            }
        }
    }
    post {
        always {
            // Always execute these steps
            echo 'Pipeline completed'
        }
    }
}
