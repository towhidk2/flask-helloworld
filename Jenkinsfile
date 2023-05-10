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
        always {
            // Always execute these steps
            echo 'Pipeline completed'
        }
        unstable {
            // Execute these steps if the build is unstable
            echo 'Build unstable, but continuing...'
        }
    }
}
