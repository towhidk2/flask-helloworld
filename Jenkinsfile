pipeline {
    agent any
    
    stages {

        
        stage('Build and Test') {
            steps {
                echo "Builing and Testing..."
            }
        }
        
        stage('CI Deployment') {
            steps {
                echo "CI Deployment..."
            }
        }
        
        stage('CD Deployment') {
            when {
                branch 'master'
            }
            steps {
                echo "CD Deployment..."
            }
        }
    }
    
    post {
        success {
            echo 'Pipeline executed successfully!'
        }
        
        failure {
            echo 'Pipeline failed!'
        }
    }
}
