// pipeline {
//     agent any
//     // environment {
//     //     // BUILD_NUMBER = sh(script: 'echo $BUILD_NUMBER', returnStdout: true).trim()
//     // }
//     stages {

//         stage('Replace image tag') {
//             steps {
//                 script {
//                     if (fileExists('helm-repo')) {
//                         sh 'rm -rf helm-repo'
//                     }
                    
//                     sshagent(credentials: ['jenkins_private_key']) {
//                         sh 'git clone git@github.com:towhidk2/helm-repo.git'
//                         dir('helm-repo') {
//                             sh 'git config --global user.email "jenkins@example.com"'
//                             sh 'git config --global user.name "jenkins"'
//                             sh "sed -i 's|\\(harbor\\.getsbo\\.com:14443/library/mern-api\\):[^:]*\\(.*\\)|\\1:v${BUILD_NUMBER}\\2|' deployment.yaml"
//                             sh "cat deployment.yaml"
//                             sh 'git add deployment.yaml'
//                             sh 'git commit -m "CI Image Tag Updates"'
//                             sh 'git push origin HEAD:main'
//                         }
                
//                     }
//                 }
//             }
//         }



//     }


// }







pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: 'my-branch']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'jenkins_private_key', url: 'git@github.com:towhidk2/helm-repo.git']]])
                sh "cat deployment.yaml"
            }
        }
    }
}
