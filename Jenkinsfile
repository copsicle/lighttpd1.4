#!/usr/bin/env groovy
// Jenkinsfile (Declarative Pipeline)
pipeline {
    agent { docker { image 'python:bookworm' } }
    stages {
        stage('build') {
            steps {
                sh 'apt install build-essential'
                sh 'meson setup --buildtype debugoptimized --prefix /usr/local build'
                sh 'cd build && meson compile && meson test && meson install'
            }
        }
    }
}