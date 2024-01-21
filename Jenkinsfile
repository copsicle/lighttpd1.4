#!/usr/bin/env groovy
// Jenkinsfile (Declarative Pipeline)
pipeline {
    node {
        git 'https://github.com/copsicle/lighttpd1.4'
        def ubijava = docker.build 'ubi8-jdk:latest'
        ubijava.inside {
            sh './autogen.sh'
            sh './configure -C'
            sh 'make check'
        }
    }
    post {
        success {
            archiveArtifacts 'src/lighttpd'
        }
    }
}
