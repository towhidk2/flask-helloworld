pipeline {
    agent {
        docker {
            image 'node:14-alpine'
            args '-p 8080:8080'
        }
    }
    stages {
        stage('Build') {
            steps {
                // Perform build steps
                sh 'node -v'
            }
        }
    }
}
