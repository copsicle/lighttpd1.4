#!/usr/bin/env groovy
// Jenkinsfile (Declarative Pipeline)
pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh './autogen.sh'
                sh './configure -C'
                sh 'make check'
                sh '/usr/bin/sudo make install'
            }
        }
    }
}
