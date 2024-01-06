#!/usr/bin/env groovy
// Jenkinsfile (Declarative Pipeline)
pipeline {
    agent { label 'jenkinsagent' }
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
