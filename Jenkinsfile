pipeline {
    agent any
    // environment {
    //     // BUILD_NUMBER = sh(script: 'echo $BUILD_NUMBER', returnStdout: true).trim()
    // }
    stages {

        stage('Replace image tag') {
            steps {
                script {

                    sshagent(credentials: ['jenkins_private_key']) {
                        sh 'git clone git@github.com:towhidk2/helm-repo.git'
                        dir('helm-repo') {
                            sh 'git config --global user.email "jenkins@example.com"'
                            sh 'git config --global user.name "jenkins"'
                            sh "sed -i 's|\\(harbor\\.getsbo\\.com:14443/library/mern-api\\):[^:]*\\(.*\\)|\\1:v${BUILD_NUMBER}\\2|' deployment.yaml"
                            sh "cat deployment.yaml"
                            sh 'git add deployment.yaml'
                            sh 'git commit -m "CI Image Tag Updates"'
                            sh 'git push origin HEAD:main'
                        }
                
                    }
                }
            }
        }
        // Add additional stages as needed

        // stage('Deploy') {
        //     steps {
        //         // Set up SSH authentication
        //         sshagent(credentials: ['jenkins_private_key']) {
        //             // Clone the repository using SSH
        //             sh 'git clone git@github.com:towhidk2/helm-repo.git'
        //             // Change to the cloned repository directory
        //             dir('helm-repo') {
        //                 sh 'git add .'
        //                 sh 'git commit -m "Update repository"'
        //                 // Push changes to GitHub
        //                 sh 'git push'
        //             }
        //         }
        //     }
        // }




    }




}












// pipeline {
//     agent any
//     environment {
//         IMAGE_NAME = "harbor.getsbo.com:14443/library/mern-api:${BUILD_NUMBER}"
//     }
//     stages {
//         stage('Build') {
//             steps {
//                 // Add build steps here
//                 sh 'echo "Building..."'
//             }
//         }



    
    
//     }
// }
