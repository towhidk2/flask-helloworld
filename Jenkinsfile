pipeline {
    agent any
    
    stages {

        
        stage('Build and Test') {
            steps {
                script {

                    
                    echo "Builing and Testing..."
                    sh 'printenv'
                    echo "Branch name: ${env.GIT_BRANCH}"
                    def branchName = "${env.GIT_BRANCH}"
                    def newBranchName = branchName.replaceAll('origin/', '')
                    println "New branch name: $newBranchName"
                    // deploy(newBranchName);
                    if(newBranchName == "master"){
                            println("Deploying to Prod.")
                    }
                    else if(newBranchName == "test"){
                            println("Deploying to Test.")
                    }
                }
            }
        }
        
        stage('CI Deployment') {
            steps {
                echo "CI Deployment..."
            }
        }
        
        // stage('CD Deployment') {
        //     steps {
        //         script {
        //             def branchName = "${env.BRANCH_NAME}"
        //             def branchName = 'origin/master'
        //             def newBranchName = branchName.replaceAll('origin/', '')
        //             println "New branch name: $newBranchName"
        //             // Calling deploy method... 
        //             deploy(branchName);
        //         }
        //     }
        // }
    }
    
}


// def void deploy(String branchName){
//     if(branchName == "master"){
//        println("Deploying to Prod.")
//     }
//     else if(branchName == "test"){
//        println("Deploying to Test.")
//     }
// }