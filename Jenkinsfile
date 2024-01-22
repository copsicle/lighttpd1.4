#!/usr/bin/env groovy
// Jenkinsfile (Declarative Pipeline)
pipeline {
    agent any
    stages {
        stage('Build') {
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