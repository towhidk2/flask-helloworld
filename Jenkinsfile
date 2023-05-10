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
            // Test stage definition
        }
        stage('Deploy') {
            // Deploy stage definition
        }
    }
    post {
        failure {
            echo 'One or more stages have failed, but the pipeline will continue'
        }
    }
}
