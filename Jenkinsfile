#!/usr/bin/env groovy
// Jenkinsfile (Declarative Pipeline)
pipeline {
    agent docker
    stages {
        stage('build') {
            steps {
                sh './autogen.sh'
                sh './configure -C'
                sh 'make check'
            }
        }
    }
}
