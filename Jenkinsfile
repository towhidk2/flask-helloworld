pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                // Build step definition
                sh 'exit 1' // Example failure condition
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
        failure {
            echo 'One or more stages have failed, but the pipeline will continue'
        }
    }
}
