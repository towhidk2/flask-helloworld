pipeline {
    agent any
    environment {
        // BUILD_NUMBER = sh(script: 'echo $BUILD_NUMBER', returnStdout: true).trim()
    }
    stages {
        stage('Replace image tag') {
            steps {
                script {
                    // Run the sed command to replace the tag with the new tag in the deployment.yaml file
                    sh "sed -i \"s/\\(harbor\\.getsbo\\.com:14443\\/library\\/mern-api\\):[^:]*\\(.*\\)/\\1:v${BUILD_NUMBER}\\2/\" deployment.yaml"

                    // Print the updated deployment.yaml file for verification
                    sh "cat deployment.yaml"
                }
            }
        }
        // Add additional stages as needed
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


//         stage('Deploy') {
//             steps {
//                 // Set up SSH authentication
//                 sshagent(credentials: ['jenkins_private_key']) {
//                     // Clone the repository using SSH
//                     sh 'git clone git@github.com:towhidk2/helm-repo.git'
//                     // Change to the cloned repository directory
//                     dir('helm-repo') {
//                         sh "sed -i 's/tag_name/${BUILD_NUMBER}/g' crud-mern-api-v1.yml"

//                         sh 'echo "Updating repository..." >> README.md'
//                         // Add and commit changes
//                         sh 'git add .'
//                         sh 'git commit -m "Update repository"'
//                         // Push changes to GitHub
//                         sh 'git push'
//                     }
//                 }
//             }
//         }
//     }
// }
