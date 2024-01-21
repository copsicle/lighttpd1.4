#!/usr/bin/env groovy
// Jenkinsfile (Declarative Pipeline)
pipeline {
    agent none
    stages {
        stage('Build') {
            agent dockerfile
            steps {
                sh './autogen.sh'
                sh './configure -C'
                sh 'make check'
            }
            post {
                success {
                    archiveArtifacts 'src/lighttpd'
                }
            }
        }
    }   
}