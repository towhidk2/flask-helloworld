pipeline {
    agent any
    
    stages {

        
        stage('Build and Test') {
            steps {
                echo "Builing and Testing..."
                echo "Branch name: ${BRANCH_NAME}"
            }
        }
        
        stage('CI Deployment') {
            steps {
                echo "CI Deployment..."
            }
        }
        
        stage('CD Deployment') {
            steps {
                script {
                    def branchName = "${env.BRANCH_NAME}"
                    // Calling deploy method... 
                    deploy(branchName);
                }
            }
        }
    }
    
}


def void deploy(String branchName){
    if(branchName == "master"){
       println("Deploying to Prod.")
    }
    else if(branchName == "test"){
       println("Deploying to Test.")
    }

}