pipeline {
    agent { docker { image 'python:bookworm' } }
    stages {
        stage('build') {
            sh 'apt install build-essential'
            sh 'meson setup --buildtype debugoptimized --prefix /usr/local build'
            sh 'cd build && meson compile && meson test && meson install'
        }
    }
}